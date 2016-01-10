class StudentProgram < ActiveRecord::Base
  belongs_to :student
  belongs_to :ProgramClass
  belongs_to :creator
  belongs_to :modifier
end
