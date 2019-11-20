# require 'faker'
# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# # Student.delete_all
# # DoNotPlace.delete_all
# # ClassroomEnrollment.delete_all
# # Classroom.delete_all
# # Teacher.delete_all
# # Grade.delete_all

# first = Grade.create!(level: 1)
# second = Grade.create!(level: 2)
# grades = Grade.all

# abowd = Teacher.create!(teacher_name: 'Ms. Abowd', current_grade: 1, grade: first, email: 'abowd@akinlementary.com', password: 'password')
# wright = Teacher.create!(teacher_name: 'Mrs. Wright', current_grade: 1, grade: first, email: 'wright@akinlementary.com', password: 'password')
# torres = Teacher.create!(teacher_name: 'Mrs. Torres', current_grade: 1, grade: first, email: 'torres@akinlementary.com', password: 'password')
# meleck = Teacher.create!(teacher_name: 'Mrs. Meleck', current_grade: 1, grade: first, email: 'meleck@akinlementary.com', password: 'password')
# marquez = Teacher.create!(teacher_name: 'Ms. Marquez', current_grade: 1, grade: first, email: 'marquez@akinlementary.com', password: 'password')
# teague = Teacher.create!(teacher_name: 'Ms. Teague', current_grade: 2, grade: second, email: 'teague@akinlementary.com', password: 'password')
# reed = Teacher.create!(teacher_name: 'Ms. Reed', current_grade: 2, grade: second, email: 'reed@akinlementary.com', password: 'password')
# rogers = Teacher.create!(teacher_name: 'Ms. Rogers', current_grade: 2, grade: second, email: 'rogers@akinlementary.com', password: 'password')
# garcia = Teacher.create!(teacher_name: 'Mr. Garcia', current_grade: 2, grade: second, email: 'garcia@akinlementary.com', password: 'password')
# berkley = Teacher.create!(teacher_name: 'Mr. Berkley', current_grade: 2, grade: second, email: 'berkley@akinlementary.com', password: 'password')

# teachers = Teacher.all


# # Classroom.create!(teacher: doug, grade: grades.sample)
# # Classroom.create!(teacher: trouni, grade: grades.sample)
# # Classroom.create!(teacher: yann, grade: grades.sample)
# # Classroom.create!(teacher: james, grade: grades.sample)
# # Classroom.create!(teacher: charles, grade: grades.sample)

# # classrooms = Classroom.all

# 20.times do
#   student = Student.new(
#     first_name:    Faker::Name.male_first_name,
#     last_name:    Faker::Name.last_name,
#     schoolID: Faker::Number.between(from: 900000, to: 999999),
#     grade: second,
#     gender: 'male',
#     birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
#     photo: 'https://cdn.dribbble.com/users/458522/screenshots/2700065/cute_monster_2_rgb_dribbbler.jpg',

#   )
#   student.save!
# end

# 20.times do
#   student = Student.new(
#     first_name:    Faker::Name.female_first_name,
#     last_name:    Faker::Name.last_name,
#     schoolID: Faker::Number.between(from: 900000, to: 999999),
#     grade: second,
#     gender: 'female',
#     birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
#     photo: 'https://cdn.dribbble.com/users/458522/screenshots/2700837/cute_monster_5_dribbbler.jpg',

#   )
#   student.save!
# end

# 20.times do
#   student = Student.new(
#     first_name:    Faker::Name.male_first_name,
#     last_name:    Faker::Name.last_name,
#     schoolID: Faker::Number.between(from: 900000, to: 999999),
#     grade: second,
#     gender: 'male',
#     birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
#     photo: 'https://cdn.dribbble.com/users/458522/screenshots/2700102/cute_monster_3_rgb_dribbbler.jpg',

#   )
#   student.save!
# end

# 20.times do
#   student = Student.new(
#     first_name:    Faker::Name.female_first_name,
#     last_name:    Faker::Name.last_name,
#     schoolID: Faker::Number.between(from: 900000, to: 999999),
#     grade: second,
#     gender: 'female',
#     birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
#     photo: 'https://cdn.dribbble.com/users/458522/screenshots/2700762/cute_monster_4_dribbbler.jpg',

#   )
#   student.save!
# end

# 20.times do
#   student = Student.new(
#     first_name:    Faker::Name.male_first_name,
#     last_name:    Faker::Name.last_name,
#     schoolID: Faker::Number.between(from: 900000, to: 999999),
#     grade: second,
#     gender: 'male',
#     birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
#     photo: 'https://adarit.com/wp-content/uploads/2016/06/Cute-tech-monster.jpg',

#   )
#   student.save!
# end

# 10.times do
#   student = Student.new(
#     first_name:    Faker::Name.female_first_name,
#     last_name:    Faker::Name.last_name,
#     schoolID: Faker::Number.between(from: 900000, to: 999999),
#     grade: second,
#     gender: 'female',
#     birthday: Faker::Date.between(from: 7.year.ago, to: 6.year.ago),
#     photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSwqH-s8lYsDvxf12yrUj1oEpSrhDMMAMyBf_kC2UumNiMRr6fW',

#   )
#   student.save!
# end


# students = Student.all


# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # ClassroomEnrollment.create!(student: students.sample, classroom: classrooms.sample)
# # classroom_enrollments = ClassroomEnrollment.all

# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
# do_not_places = DoNotPlace.all

# TeacherLock.create!(student: students.sample, teacher: teachers.sample)
# TeacherLock.create!(student: students.sample, teacher: teachers.sample)
# TeacherLock.create!(student: students.sample, teacher: teachers.sample)
# teacherlocks = TeacherLock.all

