class DoNotPlace < ApplicationRecord
  belongs_to :student_one, class_name: "Student"
  belongs_to :student_two, class_name: "Student"

end


