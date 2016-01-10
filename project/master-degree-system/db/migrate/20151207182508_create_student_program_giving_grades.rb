class CreateStudentProgramGivingGrades < ActiveRecord::Migration
  def change
    create_table :student_program_giving_grades do |t|
      t.references :studentProgram, index: true
      t.date :seminarDate
      t.boolean :hasThesisTitle
      t.boolean :finalReportOnGoodnessOfThesis
      t.boolean :refereeMakingSuggestion
      t.boolean :refreeComitteeMade
      t.string :thesisTitleArabic
      t.string :thiesisTitleEnglish
      t.string :thesisGeneralField
      t.string :thesisSpecificField
      t.boolean :thesisAbstract
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
