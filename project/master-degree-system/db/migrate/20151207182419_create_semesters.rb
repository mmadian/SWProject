class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :semesterName
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
