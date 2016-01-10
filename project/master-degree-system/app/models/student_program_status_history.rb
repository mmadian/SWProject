class StudentProgramStatusHistory < ActiveRecord::Base
  belongs_to :studentProgram
  belongs_to :programClassStatus
  belongs_to :creator
  belongs_to :modifier
end
