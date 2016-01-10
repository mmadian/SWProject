class StudentSciDegreeGrade < ActiveRecord::Base
  belongs_to :studentSciDegree
  belongs_to :creator
  belongs_to :modifier
end
