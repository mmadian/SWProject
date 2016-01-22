class StudentProgram < ActiveRecord::Base
  belongs_to :student
  belongs_to :ProgramClass
  belongs_to :semester
  has_many :studentProgramCourses, foreign_key: "studentProgram_id"
  belongs_to :creator
  belongs_to :modifier
end
