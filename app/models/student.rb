class Student < ApplicationRecord
  belongs_to :grade
  belongs_to :teacher

  has_many :classroom_enrollments
  has_many :do_not_places


  # validates :first_name,  presence: true
  # validates :schoolID,     uniqueness: true
end



