class StudentsController < ApplicationController
  def index
    @students = Student.joins(:classroom_enrollments, :classrooms)
                       .where(classrooms: { grade: Grade.find_by(level: current_teacher.grade.level) }).distinct
    @teachers = Teacher.all
    @teacher_lock = TeacherLock.new
    @do_not_place = DoNotPlace.new
    # @mystudents = Student.joins(:classroom_enrollments, :classrooms).where(teacher_id: current_teacher.id)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to students_path
  end


  def sort

    # TODO: refactor to pass year and level through params

    classes = []
    donotplaces = []

    grade = Grade.find_by(level: 1)
    students =  Student.joins(:classroom_enrollments, :classrooms)
                       .where(classrooms: { grade: Grade.find_by(level: 1) }).distinct


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

    tls = TeacherLock.joins(:teacher).where(teachers: { grade_id: grade.id} )

    tls.each do |pair|
      locked_student = pair.student
      locked_teacher = pair.teacher
      ClassroomEnrollment.create(
        student: locked_student,
        classroom: locked_teacher.classroom,
      )
      students.reject { |student| student == locked_student }
    end


    @specialtrue = students.where(special_education: true).where.not(id: classes.flatten)
    @specialtrue.each_with_index do |student, index|
      classes[index % 5] << student
    end

    classes.sort!

    @giftedtrue = students.where(gifted_talented: true).where.not(id: classes.flatten)
    @giftedtrue.each_with_index do |student, index|
      classes[index % 5] << student
    end

    classes.sort!

    @esltrue = students.where(esl: true).where.not(id: classes.flatten)
    @esltrue.each_with_index do |student, index|
      classes[index % 5] << student
    end

    classes.sort!

    @medicaltrue = students.where(medical_alert: true).where.not(id: classes.flatten)
    @medicaltrue.each_with_index do |student, index|
      classes[index % 5] << student
    end

    classes.sort!

    @girlsnoconditions = students.where(gender: 'female', esl: false, gifted_talented: false, medical_alert: false, special_education: false).where.not(id: classes.flatten)
    @girlsnoconditions.each_with_index do |student, index|
      classes[index % 5] << student
    end

    classes.sort!

    @boysnoconditions = students.where(gender: 'male', esl: false, gifted_talented: false, medical_alert: false, special_education: false).where.not(id: classes.flatten)
    @boysnoconditions.each_with_index do |student, index|
      classes[index % 5] << student
    end


      classes.each_with_index do |classroom, index|
        classroom.each do |student|
          ClassroomEnrollment.create(
            student: student,
            classroom: classrooms[index]
          )
        end
      end



    @dnps = DoNotPlace.all

    @dnps.each do |dnp|
      student_two = dnp.student_two
      next unless dnp.student_one.current_classroom == student_two.current_classroom

      student_two_enrollment = student_two.classroom_enrollments.order(:created_at).last
      innocent_student = students.where(gender: student_two.gender, esl: false, gifted_talented: false, medical_alert: false, special_education: false).where.not(id: [@dnps.map(&:student_one) + @dnps.map(&:student_two)]).find { |student| student.current_classroom != student_two.current_classroom }
      if innocent_student
        innocent_student_enrollment = innocent_student.classroom_enrollments.order(:created_at).last
        student_two_classroom = student_two_enrollment.classroom
        student_two_enrollment.classroom = innocent_student_enrollment.classroom
        innocent_student_enrollment.classroom = student_two_classroom

        student_two_enrollment.save
        innocent_student_enrollment.save
      end
    end

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





