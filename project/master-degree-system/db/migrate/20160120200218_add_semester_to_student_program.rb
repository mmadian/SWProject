class AddSemesterToStudentProgram < ActiveRecord::Migration
  def change
  	add_reference :student_programs, :semester, index: true
  end
end
