class CreateStudentProgramProfessors < ActiveRecord::Migration
  def change
    create_table :student_program_professors do |t|
      t.references :studentProgram, index: true
      t.references :professor, index: true
      t.boolean :isPrimary
      t.boolean :isDefenseCommitee
      t.text :comment
      t.date :additionDate
      t.boolean :isAccepted
      t.date :acceptanceDate
      t.boolean :isExternal
      t.boolean :hasReceivedIndivdualReport
      t.boolean :hasReceivedCollectiveReport
      t.boolean :hasReceivedSatisfactionReport
      t.boolean :isCommitteeHead
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
