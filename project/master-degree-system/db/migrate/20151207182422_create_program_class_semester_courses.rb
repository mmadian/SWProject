class CreateProgramClassSemesterCourses < ActiveRecord::Migration
  def change
    create_table :program_class_semester_courses do |t|
      t.string :specificCourseName
      t.integer :minimamNumberOfStudent
      t.references :course, index: true
      t.references :semester, index: true
      t.references :CourseClass, index: true
      t.references :ProgramClass, index: true
      t.integer :year
      t.boolean :directedReading
      t.string :courseCode
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
