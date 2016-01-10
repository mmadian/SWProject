class UserPrivilegeGroupRole < ActiveRecord::Base
  belongs_to :user
  belongs_to :privilegeGroupRole
  belongs_to :role
  belongs_to :creator
  belongs_to :modifier
end
