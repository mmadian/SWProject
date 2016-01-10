class CreateProgramClasses < ActiveRecord::Migration
  def change
    create_table :program_classes do |t|
      t.string :name
      t.integer :duration
      t.integer :extensionPeriod
      t.integer :numberOfCourses
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
