class Professor < ActiveRecord::Base
  belongs_to :user
  belongs_to :professorTitle
  validates_uniqueness_of :user_id
  belongs_to :creator
  belongs_to :modifier
end
