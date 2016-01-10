class PrivilegeGroupRole < ActiveRecord::Base
  belongs_to :privilegeGroup
  belongs_to :role
  belongs_to :creator
  belongs_to :modifier
end
