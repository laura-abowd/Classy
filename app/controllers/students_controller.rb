class StudentsController < ApplicationController


  def index
    @students = Student.all
    @student = Student.new
    @teacher_lock = TeacherLock.new
    @do_not_place = DoNotPlace.new
    # @mystudents = Student.joins(:classroom_enrollments, :classrooms).where(teacher_id: current_teacher.id)

  end

  def update

  end



end


