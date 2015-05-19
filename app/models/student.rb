class Student < ActiveRecord::Base
  validates :number, :first_name, :last_name, presence: true

  has_many :enrollments
  has_many :courses, through: :enrollments
end
