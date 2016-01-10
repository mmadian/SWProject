class CreateStudentProgramCourses < ActiveRecord::Migration
  def change
    create_table :student_program_courses do |t|
      t.references :programClassSemesterCourse, index: true
      t.references :studentProgram, index: true
      t.references :gradeClass, index: true
      t.date :subscriptionDate
      t.float :gradeValue
      t.boolean :isComplementaryCourse
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
