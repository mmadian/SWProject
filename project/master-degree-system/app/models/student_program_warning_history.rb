class StudentProgramWarningHistory < ActiveRecord::Base
  belongs_to :studentProgram
  belongs_to :creator
  belongs_to :modifier
  # validates date, uniqness: true, scope: [:studentProgram_id]
end
