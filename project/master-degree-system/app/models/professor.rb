class Professor < ActiveRecord::Base
  belongs_to :user
  belongs_to :professorTitle
  belongs_to :creator
  belongs_to :modifier
end
