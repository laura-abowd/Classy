class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home

  def home

  end


# NS I'm using this sort method to house the algorithm for now

  # def sorttest

  # end

  def group_students_by_grade
    #put all students in the same grade together
    @students = Grade.find_by(level: 1).students
  end

  def creating_classes
    # create fives classes and place them in variables
    hold = Teacher.find_by(first_name: 'hold')
    secondgrade = Grade.find_by(level: 2)
    5.times do Classroom.create!(teacher: hold, grade: secondgrade)
    end
    # classone = Classroom.all[-1]
    # classtwo = Classroom.all[-2]
    # classthree = Classroom.all[-3]
    # classfour = Classroom.all[-4]
    # classfive = Classroom.all[-5]

    # OR

    # classone = []
    # classtwo = []
    # classthree = []
    # classfour = []
    # classfive = []

  end

  def sorttest
    # loop through students from group_students_by_grade into classrooms from creating_classes
    group_students_by_grade
    @students.each_with_index do |student, index|
      if index % 1 = 0
    raise





  end














#put everyone together

#create classroom

#to asign -creating classroom_enrollment








end
