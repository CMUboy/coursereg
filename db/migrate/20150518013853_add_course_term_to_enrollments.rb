class AddCourseTermToEnrollments < ActiveRecord::Migration
  def change
    add_reference :enrollments, :course_term, index: true, foreign_key: true
  end
end
