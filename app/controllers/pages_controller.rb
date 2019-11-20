class PagesController < ApplicationController

  # skip_before_action :authenticate_teacher!, only: :home

  def home

  end


# def group_students_by_grade
#     #put all students in the same grade together
#     @students = Grade.find_by(level: 1).students
#   end

#   def creating_classes
#     # create fives classes and place them in variables
#     hold = Teacher.find_by(first_name: 'hold')
#     secondgrade = Grade.find_by(level: 2)
#     5.times do Classroom.create!(teacher: hold, grade: secondgrade)
#     end
#     classone = Classroom.all[-1]
#     classtwo = Classroom.all[-2]
#     classthree = Classroom.all[-3]
#     classfour = Classroom.all[-4]
#     classfive = Classroom.all[-5]

#   end



#   def sorttest()
#     # loop through students from group_students_by_grade into classrooms from creating_classes
#     stupidarray = [[],[],[],[],[]]

#     @allstudents = Student.all

#     @specialtrue = Student.all.where(special_education: true)
#     @specialtrue.each_with_index do |student, index|
#       stupidarray[index % 5] << student
#       end

#       stupidarray.sort

#     @giftedtrue = Student.all.where(gifted_talented: true)
#     @giftedtrue.each_with_index do |student, index|
#       stupidarray[index % 5] << student
#       end

#       stupidarray.sort

#     @esltrue = Student.all.where(esl: true)
#     @esltrue.each_with_index do |student, index|
#       stupidarray[index % 5] << student
#       end

#       stupidarray.sort_by


#     @medicaltrue = Student.all.where(medical_alert: true)
#     @medicaltrue.each_with_index do |student, index|
#       stupidarray[index % 5] << student
#       end

#       stupidarray.sort

#     @girlsnoconditions = Student.all.where(gender: 'female', esl: false, gifted_talented: false, medical_alert: false, special_education: false)
#     @girlsnoconditions.each_with_index do |student, index|
#       stupidarray[index % 5] << student
#       end

#       stupidarray.sort


#     @boysnoconditions = Student.all.where(gender: 'male', esl: false, gifted_talented: false, medical_alert: false, special_education: false)
#     @boysnoconditions.each_with_index do |student, index|
#       stupidarray[index % 5] << student
#       end

#       raise

#   end

# end


























end







    @esltrue = Student.all.where(esl: false, gifted_talented: false, medical_alert: true, special_education: false)
    @esltrue.each_with_index do |student, index|
      if (index + 1) % 5 == 1
        stupidarray[0] << student
      elsif (index + 1) % 5 == 2
        stupidarray[1] << student
      elsif (index + 1) % 5 == 3
        stupidarray[2] << student
      elsif (index + 1) % 5 == 4
        stupidarray[3] << student
      else
        stupidarray[4] << student
      end
      end

# #     stupidarray.sort_by { |array| array.count}
