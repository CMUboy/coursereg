class CreateCourseTerms < ActiveRecord::Migration
  def change
    create_table :course_terms do |t|
      t.integer :year
      t.integer :season, default: 0

      t.timestamps null: false
    end
  end
end
