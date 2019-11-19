class ClassroomsController < ApplicationController
  def create

  end

  def index
    @class = Classroom.first
    @classrooms = Classroom.all
  end

  def update
  end
end
