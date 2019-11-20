class StudentsController < ApplicationController


  def index
    @students = Student.all
    @student = Student.new
    @teacher_lock = TeacherLock.new
    @do_not_place = DoNotPlace.new
    # @mystudents = Student.joins(:classroom_enrollments, :classrooms).where(teacher_id: current_teacher.id)
  end

  def update
    @student = Booking.find(params[:id])
    @student.update(student_params)
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:esl, :gifted_talented, :medical_alert, :special_education)
  end


end




