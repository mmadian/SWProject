class AddNameToStudentSciDegreeGrads < ActiveRecord::Migration
  def change
    add_column :student_sci_degree_grades, :name, :string
  end
end
