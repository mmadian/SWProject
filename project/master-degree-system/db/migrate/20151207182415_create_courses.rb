class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :CourseName
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
