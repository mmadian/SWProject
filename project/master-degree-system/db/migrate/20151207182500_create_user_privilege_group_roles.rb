class CreateUserPrivilegeGroupRoles < ActiveRecord::Migration
  def change
    create_table :user_privilege_group_roles do |t|
      t.references :user, index: true
      t.references :privilegeGroupRole, index: true
      t.references :role, index: true
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
