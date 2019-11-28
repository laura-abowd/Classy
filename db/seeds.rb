require 'faker'
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

first = Grade.create!(level: 1)
second = Grade.create!(level: 2)
third = Grade.create!(level: 3)
fourth = Grade.create!(level: 4)
fifth = Grade.create!(level: 5)
grades = Grade.all

abowd = Teacher.create!(teacher_name: 'Ms. Abowd', grade: first, email: 'abowd@akinelementary.com', password: 'password')
wright = Teacher.create!(teacher_name: 'Mrs. Wright', grade: first, email: 'wright@akinelementary.com', password: 'password')
torres = Teacher.create!(teacher_name: 'Mrs. Torres', grade: first, email: 'torres@akinelementary.com', password: 'password')
meleck = Teacher.create!(teacher_name: 'Mrs. Meleck', grade: first, email: 'meleck@akinelementary.com', password: 'password')
marquez = Teacher.create!(teacher_name: 'Ms. Marquez', grade: first, email: 'marquez@akinelementary.com', password: 'password')

teague = Teacher.create!(teacher_name: 'Ms. Teague', grade: second, email: 'teague@akinelementary.com', password: 'password')
reed = Teacher.create!(teacher_name: 'Ms. Reed', grade: second, email: 'reed@akinelementary.com', password: 'password')
rogers = Teacher.create!(teacher_name: 'Ms. Rogers', grade: second, email: 'rogers@akinelementary.com', password: 'password')
garcia = Teacher.create!(teacher_name: 'Mr. Garcia', grade: second, email: 'garcia@akinelementary.com', password: 'password')

ilham = Teacher.create!(teacher_name: 'Mr. Ilham', grade: third, email: 'ilham@akinelementary.com', password: 'password')
sriram = Teacher.create!(teacher_name: 'Mr. Sriram', grade: third, email: 'sriram@akinelementary.com', password: 'password')
sylvia = Teacher.create!(teacher_name: 'Ms. Sylvia', grade: third, email: 'sylvia@akinelementary.com', password: 'password')
sabrina = Teacher.create!(teacher_name: 'Ms. Sabrina', grade: third, email: 'sabrina@akinelementary.com', password: 'password')
satoru = Teacher.create!(teacher_name: 'Mr. satoru', grade: third, email: 'satoru@akinelementary.com', password: 'password')

kaan = Teacher.create!(teacher_name: 'Mr. Kaan', grade: fourth, email: 'kaan@akinelementary.com', password: 'password')
joon = Teacher.create!(teacher_name: 'Mr. Joon', grade: fourth, email: 'joon@akinelementary.com', password: 'password')
eduardo = Teacher.create!(teacher_name: 'Mr. Eduardo', grade: fourth, email: 'eduardo@akinelementary.com', password: 'password')
eddo = Teacher.create!(teacher_name: 'Mr. Eddo', grade: fourth, email: 'eddo@akinelementary.com', password: 'password')
david = Teacher.create!(teacher_name: 'Mr. David', grade: fourth, email: 'david@akinelementary.com', password: 'password')

yaan = Teacher.create!(teacher_name: 'Mr. Yaan', grade: fifth, email: 'yaan@akinelementary.com', password: 'password')
james = Teacher.create!(teacher_name: 'Mr. James', grade: fifth, email: 'james@akinelementary.com', password: 'password')
doug = Teacher.create!(teacher_name: 'Mr. Doug', grade: fifth, email: 'doug@akinelementary.com', password: 'password')
trouni = Teacher.create!(teacher_name: 'Mr. Trouni', grade: fifth, email: 'trouni@akinelementary.com', password: 'password')
sylvain = Teacher.create!(teacher_name: 'Mr. Sylvain', grade: fifth, email: 'sylvain@akinelementary.com', password: 'password')


Classroom.create!(teacher: wright, grade: first, year: Date.today.year, readystatus: true )
Classroom.create!(teacher: torres, grade: first, year: Date.today.year, readystatus: true )
Classroom.create!(teacher: meleck, grade: first, year: Date.today.year, readystatus: true )
Classroom.create!(teacher: marquez, grade: first, year: Date.today.year, readystatus: true )


34.times do
  student = Student.new(
    first_name: Faker::Name.male_first_name,
    last_name:  Faker::Name.last_name,
    schoolID: Faker::Number.between(from: 900000, to: 999999),
    gender: 'male',
    birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
    photo: 'avatar-male.png',
  )
  student.save!
end

34.times do
  student = Student.new(
    first_name:    Faker::Name.female_first_name,
    last_name:    Faker::Name.last_name,
    schoolID: Faker::Number.between(from: 900000, to: 999999),
    gender: 'female',
    birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
    photo: 'avatar-female.png',
  )
  student.save!
end

students = Student.all
classrooms = Classroom.all

students.each_with_index do |student, index|
  i = index % 4
ClassroomEnrollment.create!(student: student, classroom: classrooms[i])
end


laurasclass = Classroom.create!(teacher: abowd, grade: first, year: Date.today.year, readystatus: true )

laurasboysfirst = [
'Rob',
'Ernest',
'Doug',
'Conner',
'Liam',
'Heath',
'Amman',
'Jeremy',
'Romeo',
'Edward',
'Sriram',
]

laurasboyslasts = [
'Morain',
'Finch',
'Bingham',
'Prentice',
'French',
'Goods',
'Walsh',
'Washington',
'Tenney',
'Flam',
'Krishnan',
]

laurasgirlsfirst = [
'Adrienne',
'Kaitlyn',
'Tammy',
'Ana',
'Hazel',
'Emma',
'Macey',
'Madison',
'Kelsey',
'Kiera',
'Phuong',
]

laurasgirlslasts = [
'Ventura',
'Macgarth',
'Cousins',
'Aikman',
'Reeves',
'Watts',
'Ritter',
'Brown',
'Reeves',
'Knight',
'Nguyen,'
]



laurasgirlsfirst.each_with_index do |firstname, index|
  student = Student.new(
    first_name: firstname,
    last_name:  laurasgirlslasts[index],
    schoolID: Faker::Number.between(from: 900000, to: 999999),
    gender: 'female',
    birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
    photo: 'avatar-female.png',
    laurasclass: true,
  )
  student.save!
end

laurasboysfirst.each_with_index do |firstname, index|
  student = Student.new(
    first_name: firstname,
    last_name:  laurasboyslasts[index],
    schoolID: Faker::Number.between(from: 900000, to: 999999),
    gender: 'female',
    birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
    photo: 'avatar-male.png',
    laurasclass: true,
  )
  student.save!
end

laurasstudents = Student.where(laurasclass: true)



laurasstudents.each do |student|
ClassroomEnrollment.create!(student: student, classroom: laurasclass)
end




# teachers = Teacher.where(grade: second)


# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)



# TeacherLock.create!(student: students.sample, teacher: teachers.sample)
# TeacherLock.create!(student: students.sample, teacher: teachers.sample)
# TeacherLock.create!(student: students.sample, teacher: teachers.sample)
# TeacherLock.create!(student: students.sample, teacher: teachers.sample)


