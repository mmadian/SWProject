class ProfessorProgramClassCourse < ActiveRecord::Base
  belongs_to :professor
  belongs_to :programClassSemesterCourse
  belongs_to :creator
  belongs_to :modifier
end
