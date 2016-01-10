class ProgramClassSemesterCourse < ActiveRecord::Base
  belongs_to :course
  belongs_to :semester
  belongs_to :CourseClass
  belongs_to :ProgramClass
  belongs_to :creator
  belongs_to :modifier
end
