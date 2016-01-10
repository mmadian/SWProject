class CreateCourseClasses < ActiveRecord::Migration
  def change
    create_table :course_classes do |t|
      t.string :courseClassName
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
