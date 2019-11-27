class TeacherLocksController < ApplicationController

  def create
    @teacher_lock = TeacherLock.find_or_initialize_by(teacher_lock_params)
    if @teacher_lock.save
      redirect_to students_path
    else
      render "students"
    end
  end

private


  def teacher_lock_params
    params.require(:teacher_lock).permit(:teacher_id, :student_id)
  end

end


