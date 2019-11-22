class Grade < ApplicationRecord
  has_many :classrooms
  has_one :teacher
  has_many :classroom_enrollments, through: :classrooms
  has_many :students, through: :classroom_enrollments

end
