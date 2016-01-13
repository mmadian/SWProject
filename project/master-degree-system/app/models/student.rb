class Student < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :user_id
  belongs_to :creator
  belongs_to :modifier
end
