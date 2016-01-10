class CreateStudentProgramWarningHistories < ActiveRecord::Migration
  def change
    create_table :student_program_warning_histories do |t|
      t.references :studentProgram, index: true
      t.text :warning
      t.date :date
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
