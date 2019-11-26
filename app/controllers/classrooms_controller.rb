class ClassroomsController < ApplicationController
  def create

  end

  def index
    @class = Classroom.first
    @classrooms = Classroom.all
    @students = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { grade: Grade.find_by(level: current_teacher.grade.level + 1) }).distinct
    @nextgradeteachers = Teacher.where(grade:  Grade.find_by(level: current_teacher.grade.level + 1) )
    @example = Teacher.find(6)


  end

  def update
  end
end


