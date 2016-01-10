class Student < ActiveRecord::Base
  belongs_to :user
  belongs_to :creator
  belongs_to :modifier
end
