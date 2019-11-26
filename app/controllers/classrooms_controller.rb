class ClassroomsController < ApplicationController
  def create

  end

  def index
    @class = Classroom.first
    @classrooms = Classroom.all
    @students = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { grade: Grade.find_by(level: current_teacher.grade.level + 1) }).distinct
    @nextgradeteachers = Teacher.where(grade:  Grade.find_by(level: current_teacher.grade.level + 1) )

    @garciastudents = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { teacher: Teacher.find_by(teacher_name: 'Mr. Garcia') }).distinct.order(:last_name)
    @berkleystudents = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { teacher: Teacher.find_by(teacher_name: 'Mr. Berkley') }).distinct.order(:last_name)
    @reedstudents = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { teacher: Teacher.find_by(teacher_name: 'Ms. Reed') }).distinct.order(:last_name)
    @teaguestudents = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { teacher: Teacher.find_by(teacher_name: 'Ms. Teague') }).distinct.order(:last_name)
    @rogersstudents = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { teacher: Teacher.find_by(teacher_name: 'Ms. Rogers') }).distinct.order(:last_name)

  end

  def update
  end
end


