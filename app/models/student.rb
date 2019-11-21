class Student < ApplicationRecord
  belongs_to :grade
  # has_one :teacher, through: :grade


  has_many :classroom_enrollments
  has_many :classrooms, through: :classroom_enrollments
  # scope :current_classroom, joins(:classroom_enrollments).joins(:classrooms).find_by('classrooms.year = ?', 2019)
  # belongs_to :teacher, through: :current_classrooms
  has_many :do_not_places

  def current_classroom
    classrooms.order(year: :desc).first
  end

  def current_teacher
    current_classroom.teacher
  end

  # validates :first_name,  presence: true
  # validates :schoolID,     uniqueness: true
end



