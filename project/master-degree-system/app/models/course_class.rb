class CourseClass < ActiveRecord::Base
  belongs_to :creator
  belongs_to :modifier
end
