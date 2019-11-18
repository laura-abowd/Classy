class Student < ApplicationRecord
  belongs_to :grade
  has_many :classroom_enrollments
  has_many :do_not_places
end


