# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.delete_all
DoNotPlace.delete_all
ClassroomEnrollment.delete_all
Classroom.delete_all
Teacher.delete_all
Grade.delete_all

Grade.create!(level: 1)
Grade.create!(level: 2)
Grade.create!(level: 3)
Grade.create!(level: 4)
Grade.create!(level: 1)
Grade.create!(level: 2)
grades = Grade.all

Teacher.create!(first_name: "Doug", email: 'douglewagon@gmail.com', password: 'password', grade: grades.sample)
Teacher.create!(first_name: "Trouni", email: 'trounilewagon@gmail.com', password: 'password', grade: grades.sample)
Teacher.create!(first_name: "Yann", email: 'yannlewagon@gmail.com', password: 'password', grade: grades.sample)
Teacher.create!(first_name: "James", email: 'jameslewagon@gmail.com', password: 'password', grade: grades.sample)
Teacher.create!(first_name: "Charles", email: 'charleslewagon@gmail.com', password: 'password', grade: grades.sample)
teachers = Teacher.all


Classroom.create!(teacher: teachers.sample, grade: grades.sample)
Classroom.create!(teacher: teachers.sample, grade: grades.sample)
Classroom.create!(teacher: teachers.sample, grade: grades.sample)
Classroom.create!(teacher: teachers.sample, grade: grades.sample)
classrooms = Classroom.all

Student.create!(first_name: "David", grade: grades.sample)
Student.create!(first_name: "Kloey", grade: grades.sample)
Student.create!(first_name: "Satoru", grade: grades.sample)
Student.create!(first_name: "TK", grade: grades.sample)
Student.create!(first_name: "Laura", grade: grades.sample)
Student.create!(first_name: "Ilham", grade: grades.sample)
Student.create!(first_name: "Sylvia", grade: grades.sample)
Student.create!(first_name: "Emmanuel", grade: grades.sample)
Student.create!(first_name: "Sriram", grade: grades.sample)
Student.create!(first_name: "Nicole", grade: grades.sample)
Student.create!(first_name: "Kann", grade: grades.sample)
Student.create!(first_name: "Edd", grade: grades.sample)
Student.create!(first_name: "Joon", grade: grades.sample)
Student.create!(first_name: "Eddo", grade: grades.sample)
Student.create!(first_name: "Taisei", grade: grades.sample)
Student.create!(first_name: "Gerard", grade: grades.sample)
students = Student.all

ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
classroom_enrollments = ClassroomEnrollment.all

DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
do_not_places = DoNotPlace.all

