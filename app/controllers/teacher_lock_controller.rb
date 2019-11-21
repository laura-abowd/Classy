class TeacherLockController < ApplicationController

  def create
    @teacher_lock = TeacherLock.new(teacher_lock_params)
    if @teacher_lock.save
      redirect_to students_path
    else
      redirect_to students_path
    end
  end

private

  def teacher_lock_params
    params.require(:do_not_place).permit(:teacher_id, :student_id)
  end

end


