class ClassroomsController < ApplicationController
  def create

  end

  def index
    @class = Classroom.first
    @classrooms = Classroom.all
    @students = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { grade: Grade.find_by(level: current_teacher.grade.level + 1) }).distinct
  end

  def update
  end
end
