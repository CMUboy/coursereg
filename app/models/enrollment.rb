class Enrollment < ActiveRecord::Base
  validates :course_term, :student, :course, presence: true

  has_one :course_term
  belongs_to :student
  belongs_to :course
end
