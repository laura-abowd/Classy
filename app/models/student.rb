class Student < ApplicationRecord


  has_many :teacher_locks
  has_many :classroom_enrollments
  has_many :classrooms, through: :classroom_enrollments
  # has_one :teacher, through: :classrooms
  # scope :current_classroom, joins(:classroom_enrollments).joins(:classrooms).find_by('classrooms.year = ?', 2019)
  # belongs_to :teacher, through: :current_classrooms
  has_many :do_not_places, ->(student) { unscope(:where).where("student_one_id = :id OR student_two_id = :id", id: student.id)}

  def full_name
    "#{first_name.capitalize} #{last_name[0].upcase}."
  end

  def current_classroom
    classrooms.order(year: :desc).first
  end

  def current_teacher
    current_classroom.teacher
  end

  # validates :first_name,  presence: true
  # validates :schoolID,     uniqueness: true

  def grade
    current_classroom.grade
  end

end



