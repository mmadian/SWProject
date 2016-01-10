class AddColumnsToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :CourseClass_id, :integer
    add_column :courses, :courseCode, :string
    add_column :courses, :credit_hours, :integer
    add_column :courses, :total_grade, :float
    add_column :courses, :min_number_of_student, :integer

    add_column :program_class_semester_courses, :credit_hours, :integer
    add_column :program_class_semester_courses, :total_grade, :float
    add_column :program_class_semester_courses, :min_number_of_student, :integer
  end
end
