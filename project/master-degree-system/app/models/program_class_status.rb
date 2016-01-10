class ProgramClassStatus < ActiveRecord::Base
  belongs_to :programClass
  belongs_to :preProgramClass
  belongs_to :creator
  belongs_to :modifier
end
