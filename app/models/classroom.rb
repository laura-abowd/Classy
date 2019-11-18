class Classroom < ApplicationRecord
  belongs_to :teacher
  belongs_to :grade
  has_many :classroom_enrollments
  has_many :students, through: :classroom_enrollments


  # validates :year,  presence: true
end
