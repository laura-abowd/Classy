class DoNotPlacesController < ApplicationController
  def create
    @do_not_place = DoNotPlace.new(do_not_place_params)
    if @do_not_place.save
      redirect_to students_path
    else
      render 'students'
    end
  end

  def do_not_place_params
    params.require(:do_not_place).permit(:student_one_id, :student_two_id)
  end


end

