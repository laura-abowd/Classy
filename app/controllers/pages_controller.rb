class PagesController < ApplicationController

  skip_before_action :authenticate_teacher!, only: :home

  def home

  end




end


































    # @esltrue = Student.all.where(esl: false, gifted_talented: false, medical_alert: true, special_education: false)
    # @esltrue.each_with_index do |student, index|
    #   if (index + 1) % 5 == 1
    #     stupidarray[0] << student
    #   elsif (index + 1) % 5 == 2
    #     stupidarray[1] << student
    #   elsif (index + 1) % 5 == 3
    #     stupidarray[2] << student
    #   elsif (index + 1) % 5 == 4
    #     stupidarray[3] << student
    #   else
    #     stupidarray[4] << student
    #   end
    #   end

# #     stupidarray.sort_by { |array| array.count}
