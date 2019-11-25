class StudentsController < ApplicationController
  def index

    @mystudents = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { teacher: Teacher.find_by(teacher_name: current_teacher.teacher_name) }).distinct.sort_by(&:last_name)
    @students = Student.includes(:classrooms).where(classrooms: { grade: current_teacher.grade }).distinct
    @grade = current_teacher.grade
    @nextgradeteachers = Teacher.where(grade:  Grade.find_by(level: current_teacher.grade.level + 1) )
    @teacher_lock = TeacherLock.new
    @do_not_place = DoNotPlace.new

  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to students_path
  end


  def sort
      ClassroomEnrollment.joins(:classroom).where(classrooms: { grade: Grade.find_by(level: current_teacher.grade.level + 1) }).destroy_all

    classes = []
    donotplaces = []

    grade = Grade.find_by(level: current_teacher.grade.level)
    students =  Student.joins("INNER JOIN classroom_enrollments on classroom_enrollments.student_id = students.id", "INNER JOIN classrooms ON classrooms.id = classroom_enrollments.classroom_id")
                       .where(classrooms: { grade: Grade.find_by(level: current_teacher.grade.level) }).order("RANDOM()")

    nextgrade = Grade.find_by(level: grade.level + 1)
    nextgradeteachers = Teacher.where(grade: nextgrade)

    nextgradeteachers.each_with_index do |teacher, index|
      classes << []
      Classroom.find_or_create_by(
        teacher: teacher,
        grade: nextgrade,
        year: Date.today.year + 1
      )
    end


    classrooms = Classroom.where(grade: nextgrade)


  teacherlocks = TeacherLock.joins(:teacher).where(teachers: { grade: nextgrade } )
    teacherlocks.each do |pair|
      locked_student = pair.student
      locked_teacher = pair.teacher

      ClassroomEnrollment.create(
        student: locked_student,
        classroom: locked_teacher.classroom,
      )
      students = students.where.not(id: locked_student.id)
    end



    #works really well until the same student is used as one or two, then it duplicates that student
    dnps = DoNotPlace.all
    dnps.each_with_index do |pairing, index|

      studentone = pairing.student_one
      studenttwo = pairing.student_two

      if classes.include?(studentone)
      classes[(index + 4) % classrooms.count] << studenttwo
      students = students.where.not(id: studenttwo.id)

      elsif classes.include?(studenttwo)
      classes[(index + 4) % classrooms.count] << studentone
      students = students.where.not(id: studentone.id)

      else
      classes[index % classrooms.count] << studentone
      classes[(index + 4) % classrooms.count] << studenttwo
      students = students.where.not(id: studentone.id)
      students = students.where.not(id: studenttwo.id)
      end
      end
      classes.sort!

    attributeslist = ['special_education', 'gifted_talented', 'esl', 'medical_alert']

    attributeslist.each do |attribute|
      @filteredstudents = students.where("#{attribute} = true")
      @filteredstudents.each_with_index do |student, index|
        classes[index % classrooms.count] << student
        students = students.where.not(id: student.id)
      end
      classes.sort!
    end

    genders = ['female', 'male']
    genders.each do |gender|
      @girlsnoconditions = students.where(gender: gender)
      @girlsnoconditions.each_with_index do |student, index|
        classes[index % classrooms.count] << student
        students = students.where.not(id: student.id)
      end
      classes.sort!
    end




      classes.each_with_index do |classroom, index|
        classroom.each do |student|
          ClassroomEnrollment.create(
            student: student,
            classroom: classrooms[index]
          )
        end
      end




    # @dnps = DoNotPlace.all

    # @dnps.each do |dnp|
    #   student_two = dnp.student_two
    #   next unless dnp.student_one.current_classroom == student_two.current_classroom

    #   student_two_enrollment = student_two.classroom_enrollments.order(:created_at).last
    #   innocent_student = students.where(gender: student_two.gender, esl: false, gifted_talented: false, medical_alert: false, special_education: false).where.not(id: [@dnps.map(&:student_one) + @dnps.map(&:student_two)]).find { |student| student.current_classroom != student_two.current_classroom }
    #   if innocent_student
    #     innocent_student_enrollment = innocent_student.classroom_enrollments.order(:created_at).last
    #     student_two_classroom = student_two_enrollment.classroom
    #     student_two_enrollment.classroom = innocent_student_enrollment.classroom
    #     innocent_student_enrollment.classroom = student_two_classroom

    #     student_two_enrollment.save
    #     innocent_student_enrollment.save
    #   end
    # end

    # @dnps.each do |dnp|
    #   student_one = dnp.student_one
    #   student_two = dnp.student_two
    #   if student_one.current_classroom == student_two.current_classroom
    #     raise
    #   end
    # end

    # tls.each do |pair|
    # locked_student = pair.student
    # locked_teacher = pair.teacher
    # if locked_student.current_classroom.teacher == locked_teacher
    #   raise
    #   end
    # end

    redirect_to classrooms_path

  end


  private

  def student_params
    params.require(:student).permit(:esl, :gifted_talented, :medical_alert, :special_education, :notes)
  end

end





