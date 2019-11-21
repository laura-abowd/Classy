class StudentsController < ApplicationController
  def index
    @students = Student.all
    @student = Student.new
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
    # loop through students from group_students_by_grade into classrooms from creating_classes
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

    raise

      redirect_to classrooms_path
  end

  private

  def student_params
    params.require(:student).permit(:esl, :gifted_talented, :medical_alert, :special_education)
  end
end





