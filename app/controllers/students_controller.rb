class StudentsController < ApplicationController
  def index
    @students = Student.all
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
    # TODO: don't hard code number of classes do number of teachers and grade

    classes = [[],[],[],[],[]]
    donotplaces = []

    students = Student.all

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

      secondgrade = Grade.find_by(level: 2)
      secondgradeteachers = Teacher.where(grade: secondgrade)

      classes.each_with_index do |class_array, index|
        classroom = Classroom.create(
          teacher: secondgradeteachers[index],
          grade: secondgrade,
          year: 2020
        )
        class_array.each do |student|
          ClassroomEnrollment.create(
            student: student,
            classroom: classroom
          )
          student.grade = classroom.grade
          student.save
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

    # raise

    @tls = TeacherLock.all


    redirect_to classrooms_path
  end

  private

  def student_params
    params.require(:student).permit(:esl, :gifted_talented, :medical_alert, :special_education, :notes)
  end
end





