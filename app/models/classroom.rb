class Classroom < ApplicationRecord
  belongs_to :teacher
  belongs_to :grade
  has_many :classroom_enrollments
  has_many :students, through: :classroom_enrollments, source: :student
  # scope :ordered, order(classroom_enrollments: :desc)


  # validates :year,  presence: true
  def to_s
    id
  end
end
