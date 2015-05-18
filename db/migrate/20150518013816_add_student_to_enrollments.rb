class AddStudentToEnrollments < ActiveRecord::Migration
  def change
    add_reference :enrollments, :student, index: true, foreign_key: true
  end
end
