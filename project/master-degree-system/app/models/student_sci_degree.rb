class StudentSciDegree < ActiveRecord::Base
  belongs_to :SciDegreeClass
  belongs_to :student
  belongs_to :university
  belongs_to :faculty
  belongs_to :department
  belongs_to :creator
  belongs_to :modifier
end
