class StudentsController < ApplicationController

  def index
    @students = Student.all
    @student = Student.first
    # @mystudents = Student.joins(:classroom_enrollments, :classrooms).where(teacher_id: current_teacher.id)

  end

  def update

  end




end





