class StudentsController < ApplicationController
  def index

    @mystudents = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { teacher: Teacher.find_by(teacher_name: current_teacher.teacher_name) }).distinct.sort_by(&:last_name)
    @mygradestudents = Student.includes(:classrooms).where(classrooms: { grade: current_teacher.grade }).distinct
    @grade = current_teacher.grade
    @mygradeteachers = Teacher.where(grade:  Grade.find_by(level: current_teacher.grade.level ) )
    @nextgradeteachers = Teacher.where(grade:  Grade.find_by(level: current_teacher.grade.level + 1) )
    # @teacher_lock = TeacherLock.new
    @new_do_not_place = DoNotPlace.new

  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to students_path
  end

  def sort
    ClassroomEnrollment.joins(:classroom).where(classrooms: { grade: Grade.find_by(level: current_teacher.grade.level + 1) }).destroy_all

    # classes = []
    classrooms = []
    # donotplaces = []

    grade = Grade.find_by(level: current_teacher.grade.level)
    students =  Student.joins("INNER JOIN classroom_enrollments on classroom_enrollments.student_id = students.id", "INNER JOIN classrooms ON classrooms.id = classroom_enrollments.classroom_id")
                       .where(classrooms: { grade: Grade.find_by(level: current_teacher.grade.level) }).order("RANDOM()")

    # raise
    nextgrade = Grade.find_by(level: grade.level + 1)
    nextgradeteachers = Teacher.where(grade: nextgrade)

    nextgradeteachers.each_with_index do |teacher, index|
      # classes << []
      classrooms << Classroom.find_or_create_by(
                      teacher: teacher,
                      grade: nextgrade,
                      year: Date.today.year + 1
                    )
    end

    # classrooms = Classroom.where(grade: nextgrade)

    #lockedteacher only works up to a certain point
  teacherlocks = TeacherLock.joins(:teacher).where(teachers: { grade: nextgrade } )
    teacherlocks.each do |pair|
      locked_student = pair.student
      locked_teacher = pair.teacher
      # classindex = classrooms.index { |classroom| classroom.teacher == locked_teacher }
      # classes[classindex] << locked_student

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

      classrooms = Classroom.where(grade: nextgrade).sort_by { |classroom| classroom.students.count }
      enrollment_one = ClassroomEnrollment.joins(:classroom).find_by(student: studentone, classrooms: { grade: nextgrade })
      enrollment_two = ClassroomEnrollment.joins(:classroom).find_by(student: studenttwo, classrooms: { grade: nextgrade })

      # if enrollment_one && enrollment_two
      if not_placed?(studentone, students) && not_placed?(studenttwo, students)
        create_enrollment(studentone, classrooms.first)
        create_enrollment(studenttwo, classrooms.second)
        students = students.where.not(id: studenttwo.id)
        students = students.where.not(id: studentone.id)

      elsif not_placed?(studentone, students)
        create_enrollment(studentone, classrooms.reject { |classroom| classroom.id == enrollment_two.id }.first)
        students = students.where.not(id: studentone.id)

      elsif not_placed?(studenttwo, students)
        create_enrollment(studenttwo, classrooms.reject { |classroom| classroom.id == enrollment_one.id }.first)
        students = students.where.not(id: studenttwo.id)
      end
      # classes.sort!
    end

    attributeslist = ['special_education', 'gifted_talented', 'esl', 'medical_alert']

    classrooms = Classroom.where(grade: nextgrade).sort_by { |classroom| classroom.students.count }
    attributeslist.each do |attribute|
      @filteredstudents = students.where("#{attribute} = true")
      @filteredstudents.each_with_index do |student, index|
        # classes[index % classrooms.count] << student
        create_enrollment(student, classrooms[index % classrooms.count]) if not_placed?(student, students)
        # ClassroomEnrollment.create(student: student, classroom: classrooms[index % classrooms.count])
        students = students.where.not(id: student.id)
      end
    end

    classrooms = Classroom.where(grade: nextgrade).sort_by { |classroom| classroom.students.count }
    genders = ['female', 'male']
    genders.each do |gender|
      @girlsnoconditions = students.where(gender: gender)
      @girlsnoconditions.each_with_index do |student, index|
        # classes[index % classrooms.count] << student
        create_enrollment(student, classrooms[index % classrooms.count]) if not_placed?(student, students)
        # ClassroomEnrollment.create(student: student, classroom: classrooms[index % classrooms.count])
        students = students.where.not(id: student.id)
      end
      # classes.sort!
    end

      # classes.each_with_index do |classroom, index|
      #   classroom.each do |student|
      #     ClassroomEnrollment.create(
      #       student: student,
      #       classroom: classrooms[index]
      #     )
      #   end
      # end

    @errors = []

    stupid = DoNotPlace.all
    stupid.each do |dnp|
      student_one = dnp.student_one
      student_two = dnp.student_two
      if student_one.current_classroom == student_two.current_classroom
        # raise
      end
    end

    dumb = TeacherLock.all
    dumb.each do |pair|
    locked_student = pair.student
    locked_teacher = pair.teacher
    if locked_student.current_classroom.teacher != locked_teacher
        # raise
      end
    end


    redirect_to classrooms_path

  end

# def autocomplete_
#   @suggestions = student.select(:first_name, :last_name)
#   render json: @suggestions
# end

  private

  def student_params
    params.require(:student).permit(:esl, :gifted_talented, :medical_alert, :special_education, :notes)
  end

  def create_enrollment(student, classroom)
    ClassroomEnrollment.create(student: student, classroom: classroom)
  end

  def not_placed?(student, students)
    return students.include?(student)
  end

end





