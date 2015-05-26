class Course < ActiveRecord::Base
  validates :number, :title, presence: true
  validates :enrollment_capacity, numericality: {greater_than_or_equal_to: 1}, presence: true

  has_many :enrollments
  has_many :students, through: :enrollments

  def enrollment_count(course_term)
    enrollments.find_all { |enrollment| enrollment.course_term == course_term }.count
  end

  def enrollable?(course_term)
    enrollment_count(course_term) < enrollment_capacity
  end

  def to_s
    "#{number}: #{title}"
  end
end
