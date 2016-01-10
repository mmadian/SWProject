class CreateProfessorProgramClassCourses < ActiveRecord::Migration
  def change
    create_table :professor_program_class_courses do |t|
      t.references :professor, index: true
      t.string :programClassSemesterCourse
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
