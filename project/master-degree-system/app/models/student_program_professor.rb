class StudentProgramProfessor < ActiveRecord::Base
  belongs_to :studentProgram
  belongs_to :professor
  belongs_to :creator
  belongs_to :modifier
end
