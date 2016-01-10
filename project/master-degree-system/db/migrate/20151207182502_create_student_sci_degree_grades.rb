class CreateStudentSciDegreeGrades < ActiveRecord::Migration
  def change
    create_table :student_sci_degree_grades do |t|
      t.references :studentSciDegree, index: true
      t.integer :year
      t.float :grade
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
