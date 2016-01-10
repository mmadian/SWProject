class StudentProgramGivingGrade < ActiveRecord::Base
  belongs_to :studentProgram
  belongs_to :creator
  belongs_to :modifier
end
