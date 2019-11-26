class DoNotPlacesController < ApplicationController
  def create
    @do_not_place = DoNotPlace.new(do_not_place_params)
    if @do_not_place.save
      redirect_to students_path
    else
      raise
      redirect_to students_path
      # render "students/index"
    end
  end

  def destroy
    @do_not_place = DoNotPlace.find(params[:id])
    @do_not_place.destroy
    unless @do_not_place.persisted?
      redirect_to students_path
    else
      render 'students/index'
    end
  end

  def do_not_place_params
    params.require(:do_not_place).permit(:student_one_id, :student_two_id)
  end
end
