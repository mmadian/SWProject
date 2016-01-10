class StudentProgramCourse < ActiveRecord::Base
  belongs_to :programClassSemesterCourse
  belongs_to :studentProgram
  belongs_to :gradeClass
  belongs_to :creator
  belongs_to :modifier
end
