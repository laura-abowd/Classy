class ClassroomEnrollmentsController < ApplicationController
  def update
    @classroom_enrollment = ClassroomEnrollment.find(params[:id])
    @old_classroom = @classroom_enrollment.classroom
    @classroom_enrollment.update(classroom_enrollment_paramaters)
  end

  private
  def classroom_enrollment_paramaters
    params.require(:classroom_enrollment).permit(:classroom_id)
  end
end
