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
    stupidarray = [[],[],[],[],[]]

    @allstudents = Student.all

    @specialtrue = Student.all.where(special_education: true)
    @specialtrue.each_with_index do |student, index|
      stupidarray[index % 5] << student
      end

      stupidarray.sort

    @giftedtrue = Student.all.where(gifted_talented: true)
    @giftedtrue.each_with_index do |student, index|
      stupidarray[index % 5] << student
      end

      stupidarray.sort

    @esltrue = Student.all.where(esl: true)
    @esltrue.each_with_index do |student, index|
      stupidarray[index % 5] << student
      end

      stupidarray.sort_by

    @medicaltrue = Student.all.where(medical_alert: true)
    @medicaltrue.each_with_index do |student, index|
      stupidarray[index % 5] << student
      end

      stupidarray.sort

    @girlsnoconditions = Student.all.where(gender: 'female', esl: false, gifted_talented: false, medical_alert: false, special_education: false)
    @girlsnoconditions.each_with_index do |student, index|
      stupidarray[index % 5] << student
      end

      stupidarray.sort

    @boysnoconditions = Student.all.where(gender: 'male', esl: false, gifted_talented: false, medical_alert: false, special_education: false)
    @boysnoconditions.each_with_index do |student, index|
      stupidarray[index % 5] << student
      end

      # secondgradeteachers = Teacher.where(Teacher.grade.level == 2)

            # classone.each do |student| {
      #   student.teacher = Teacher.where(teacher_name: 'Ms. Teague')
      # }

      # classone.each do |student| {
      #   student.teacher = Teacher.where(teacher_name: 'Ms. Reed')
      # }

      # classone.each do |student| {
      #   student.teacher = Teacher.where(teacher_name: 'Ms. Rogers')
      # }

      # classone.each do |student| {
      #   student.teacher = Teacher.where(teacher_name: 'Mr. Garcia')
      # }

      # classone.each do |student| {
      #   student.teacher = Teacher.where(teacher_name: 'Mr. Berkley)
      # }

      classone.each do |student| {
        student.teacher = Teacher.where(teacher_name: 'Ms. Teague')
      }

      classtwo.each do |student| {
        student.teacher = Teacher.where(teacher_name: 'Ms. Reed')
      }

      classthree.each do |student| {
        student.teacher = Teacher.where(teacher_name: 'Ms. Rogers')
      }

      classfour.each do |student| {
        student.teacher = Teacher.where(teacher_name: 'Mr. Garcia')
      }

      classfive.each do |student| {
        student.teacher = Teacher.where(teacher_name: 'Mr. Berkley')
      }


      redirect_to students_path

      raise

  end

  private

  def student_params
    params.require(:student).permit(:esl, :gifted_talented, :medical_alert, :special_education, :notes)
  end
end





