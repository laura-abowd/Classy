class Grade < ApplicationRecord
  has_many :classrooms
  has_many :students
  has_one :teacher


end
