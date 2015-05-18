class Enrollment < ActiveRecord::Base
  has_one :course_term
  belongs_to :student
  belongs_to :course
end
