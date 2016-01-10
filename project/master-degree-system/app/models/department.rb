class Department < ActiveRecord::Base
  belongs_to :creator
  belongs_to :modifier
end
