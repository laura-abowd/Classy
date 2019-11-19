class PagesController < ApplicationController
  def home

  end

# NS I'm using this sort method to house the algorithm for now

  def sorttest



  end

  def group_students_by_grade
    #put all students in the same grade together
    @students = Grade.find_by(level: 1).students
  end

  def creating_classes
    10.times do Classroom.create!(grade: 2)
    end
  end






#create five classrooms

#start assigning







#put everyone together

#create classroom

#to asign -creating classroom_enrollment








end
