class ClassroomsController < ApplicationController
  def create

  end

  def index
    @class = Classroom.first
    @classrooms = Classroom.all
    @students = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { grade: Grade.find_by(level: current_teacher.grade.level + 1) }).distinct

    @garciastudents = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { teacher: Teacher.find_by(teacher_name: 'Mr. Garcia') }).distinct.shuffle.first(22)
    @berkleystudents = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { teacher: Teacher.find_by(teacher_name: 'Mr. Berkley') }).distinct.shuffle.first(22)
    @reedstudents = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { teacher: Teacher.find_by(teacher_name: 'Ms. Reed') }).distinct.shuffle.first(22)
    @teaguestudents = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { teacher: Teacher.find_by(teacher_name: 'Ms. Teague') }).distinct.shuffle.first(22)
    @rogersstudents = Student.joins(:classroom_enrollments, :classrooms).where(classrooms: { teacher: Teacher.find_by(teacher_name: 'Ms. Rogers') }).distinct.shuffle.first(22)

  end

  def update
  end
end
