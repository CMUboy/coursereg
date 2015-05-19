class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :number
      t.string :title
      t.string :description
      t.integer :enrollment_capacity

      t.timestamps null: false
    end
  end
end
