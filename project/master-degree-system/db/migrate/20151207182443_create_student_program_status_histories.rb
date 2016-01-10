class CreateStudentProgramStatusHistories < ActiveRecord::Migration
  def change
    create_table :student_program_status_histories do |t|
      t.references :studentProgram, index: true
      t.references :programClassStatus, index: true
      t.date :date
      t.text :comments
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
