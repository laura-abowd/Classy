class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :grade

  # has_many :classrooms
  # validates :first_name,  presence: true
  # validates :schoolID,     uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end
end



