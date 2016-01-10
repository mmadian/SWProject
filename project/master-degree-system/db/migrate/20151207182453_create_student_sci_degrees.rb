class CreateStudentSciDegrees < ActiveRecord::Migration
  def change
    create_table :student_sci_degrees do |t|
      t.references :SciDegreeClass, index: true
      t.references :student, index: true
      t.references :university, index: true
      t.references :faculty, index: true
      t.references :department, index: true
      t.integer :graduationYear
      t.string :fieldOfResearch
      t.float :gpa
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
