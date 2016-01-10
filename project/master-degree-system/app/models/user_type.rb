class UserType < ActiveRecord::Base
  belongs_to :creator
  belongs_to :modifier
end
