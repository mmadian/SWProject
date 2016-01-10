class ChangecolumnNameInProfessorProgramClassCourse < ActiveRecord::Migration
  def change
  	rename_column :professor_program_class_courses, :programClassSemesterCourse, :programClassSemesterCourse_id
  	change_column :professor_program_class_courses, :programClassSemesterCourse_id, :integer
  end
end
