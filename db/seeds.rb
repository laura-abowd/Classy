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
grades = Grade.all

doug = Teacher.create!(first_name: "Doug", email: 'douglewagon@gmail.com', password: 'password', grade: grades.sample)
trouni = Teacher.create!(first_name: "Trouni", email: 'trounilewagon@gmail.com', password: 'password', grade: grades.sample)
yann = Teacher.create!(first_name: "Yann", email: 'yannlewagon@gmail.com', password: 'password', grade: grades.sample)
james = Teacher.create!(first_name: "James", email: 'jameslewagon@gmail.com', password: 'password', grade: grades.sample)
charles = Teacher.create!(first_name: "Charles", email: 'charleslewagon@gmail.com', password: 'password', grade: grades.sample)
teachers = Teacher.all


Classroom.create!(teacher: doug, grade: grades.sample)
Classroom.create!(teacher: trouni, grade: grades.sample)
Classroom.create!(teacher: yann, grade: grades.sample)
Classroom.create!(teacher: james, grade: grades.sample)
Classroom.create!(teacher: charles, grade: grades.sample)
classrooms = Classroom.all

Student.create!(schoolID: 12345, first_name: "David", last_name: 'lastname', grade: grades.sample, gender: 'male', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Kloey", last_name: 'lastname', grade: grades.sample, gender: 'male', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Satoru", last_name: 'lastname', grade: grades.sample, gender: 'male', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "TK", last_name: 'lastname', grade: grades.sample, gender: 'male', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Laura", last_name: 'lastname', grade: grades.sample, gender: 'male', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Ilham", last_name: 'lastname', grade: grades.sample, gender: 'male', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Sylvia", last_name: 'lastname', grade: grades.sample, gender: 'male', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Emmanuel", last_name: 'lastname', grade: grades.sample, gender: 'male', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Sriram", last_name: 'lastname', grade: grades.sample, gender: 'male', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Nicole", last_name: 'lastname', grade: grades.sample, gender: 'female', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Kann", last_name: 'lastname', grade: grades.sample, gender: 'female', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Edd", last_name: 'lastname', grade: grades.sample, gender: 'female', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Joon", last_name: 'lastname', grade: grades.sample, gender: 'female', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Eddo", last_name: 'lastname', grade: grades.sample, gender: 'female', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Taisei", last_name: 'lastname', grade: grades.sample, gender: 'female', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Ron", last_name: 'lastname', grade: grades.sample, gender: 'male', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Harry", last_name: 'lastname', grade: grades.sample, gender: 'male', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Hermione", last_name: 'lastname', grade: grades.sample, gender: 'female', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Ginny", last_name: 'lastname', grade: grades.sample, gender: 'female', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Luna", last_name: 'lastname', grade: grades.sample, gender: 'female', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Nevil", last_name: 'lastname', grade: grades.sample, gender: 'male', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
Student.create!(schoolID: 12345, first_name: "Voldemort", last_name: 'lastname', grade: grades.sample, gender: 'evil', birthday: '11/19/2019', esl: false, gifted_talented: false, medical_alert: false, notes: '',  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyk5Sqio-frEZRs6p4LCOq9-J8LlEj0OMkP2gjQLR12rusT2eg')
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
DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
DoNotPlace.create!(student_one: students.sample, student_two: students.sample)
do_not_places = DoNotPlace.all

TeacherLock.create!(student: students.sample, teacher: teachers.sample)
TeacherLock.create!(student: students.sample, teacher: teachers.sample)
teacherlocks = TeacherLock.all

