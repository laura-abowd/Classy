class DoNotPlacesController < ApplicationController
  def create
    @do_not_place = DoNotPlace.new(do_not_place_params)
    @grade = current_teacher.grade
    @teacher_lock = TeacherLock.new
    @nextgradeteachers = Teacher.where(grade:  Grade.find_by(level: current_teacher.grade.level + 1) )

    if @do_not_place.save
      respond_to do |format|
        format.html { redirect_to students_path }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { redirect_to students_path }
        format.js
      end
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
