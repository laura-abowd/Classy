class DoNotPlace < ApplicationRecord
  belongs_to :student_one, class_name: "Student"
  belongs_to :student_two, class_name: "Student"

  def other_student(student)
    if student == student_one
      return student_two
    elsif student == student_two
      return student_one
    else
      return nil
    end
  end
end


