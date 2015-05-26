class Student < ActiveRecord::Base
  validates :number, :first_name, :last_name, presence: true

  has_many :enrollments
  has_many :courses, through: :enrollments

  def enrolled?(course, course_term)
    !enrollments.find { |enrollment| enrollment.course == course && enrollment.course_term == course_term }.nil?
  end

  def to_s
    "#{number}: #{last_name}, #{first_name}"
  end
end
