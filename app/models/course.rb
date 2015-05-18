class Course < ActiveRecord::Base
  validates :number, :title, presence: true
  validates :enrollment_capacity, numericality: {greater_than_or_equal_to: 1}, presence: true

  has_many :enrollments
  has_many :students, through: :enrollments
end
