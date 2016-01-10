class Role < ActiveRecord::Base
  belongs_to :creator
  belongs_to :modifier
end
