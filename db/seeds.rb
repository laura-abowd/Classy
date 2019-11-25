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
berkley = Teacher.create!(teacher_name: 'Mr. Berkley', grade: second, email: 'berkley@akinelementary.com', password: 'password')

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


firstone = Classroom.create!(teacher: abowd, grade: first, year: Date.today.year)
firsttwo = Classroom.create!(teacher: wright, grade: first, year: Date.today.year)
firstthree = Classroom.create!(teacher: torres, grade: first, year: Date.today.year)
firstfour = Classroom.create!(teacher: meleck, grade: first, year: Date.today.year)
firstfive = Classroom.create!(teacher: marquez, grade: first, year: Date.today.year)

classrooms = Classroom.all

20.times do
  student = Student.new(
    first_name: Faker::Name.male_first_name,
    last_name:  Faker::Name.last_name,
    schoolID: Faker::Number.between(from: 900000, to: 999999),
    gender: 'male',
    birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
    photo: 'https://cdn.dribbble.com/users/458522/screenshots/2700065/cute_monster_2_rgb_dribbbler.jpg',

  )
  student.save!
end

20.times do
  student = Student.new(
    first_name:    Faker::Name.female_first_name,
    last_name:    Faker::Name.last_name,
    schoolID: Faker::Number.between(from: 900000, to: 999999),
    gender: 'female',
    birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
    photo: 'https://cdn.dribbble.com/users/458522/screenshots/2700837/cute_monster_5_dribbbler.jpg',

  )
  student.save!
end

20.times do
  student = Student.new(
    first_name:    Faker::Name.male_first_name,
    last_name:    Faker::Name.last_name,
    schoolID: Faker::Number.between(from: 900000, to: 999999),
    gender: 'male',
    birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
    photo: 'https://cdn.dribbble.com/users/458522/screenshots/2700102/cute_monster_3_rgb_dribbbler.jpg',

  )
  student.save!
end

20.times do
  student = Student.new(
    first_name:    Faker::Name.female_first_name,
    last_name:    Faker::Name.last_name,
    schoolID: Faker::Number.between(from: 900000, to: 999999),
    gender: 'female',
    birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
    photo: 'https://cdn.dribbble.com/users/458522/screenshots/2700762/cute_monster_4_dribbbler.jpg',

  )
  student.save!
end

20.times do
  student = Student.new(
    first_name:    Faker::Name.male_first_name,
    last_name:    Faker::Name.last_name,
    schoolID: Faker::Number.between(from: 900000, to: 999999),
    gender: 'male',
    birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
    photo: 'https://adarit.com/wp-content/uploads/2016/06/Cute-tech-monster.jpg',

  )
  student.save!
end

10.times do
  student = Student.new(
    first_name:    Faker::Name.female_first_name,
    last_name:    Faker::Name.last_name,
    schoolID: Faker::Number.between(from: 900000, to: 999999),
    gender: 'female',
    birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
    photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSwqH-s8lYsDvxf12yrUj1oEpSrhDMMAMyBf_kC2UumNiMRr6fW',
    special_education: true,
    gifted_talented: true

  )
  student.save!
end

students = Student.all

students.each_with_index do |student, index|
  i = index % 5
ClassroomEnrollment.create!(student: student, classroom: classrooms[i])
end


teachers = Teacher.where(grade: second)


DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
DoNotPlace.create!(student_one: students.sample, student_two: students.sample)



TeacherLock.create!(student: students.sample, teacher: teachers.sample)
TeacherLock.create!(student: students.sample, teacher: teachers.sample)
TeacherLock.create!(student: students.sample, teacher: teachers.sample)
TeacherLock.create!(student: students.sample, teacher: teachers.sample)


