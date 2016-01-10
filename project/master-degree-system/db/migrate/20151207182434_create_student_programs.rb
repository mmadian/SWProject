class CreateStudentPrograms < ActiveRecord::Migration
  def change
    create_table :student_programs do |t|
      t.references :student, index: true
      t.references :ProgramClass, index: true
      t.boolean :finishedToefl
      t.date :toeflDate
      t.boolean :hasResearchPoint
      t.boolean :puplishedAPaper
      t.date :programStartDate
      t.boolean :isVTMENAprogram
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
