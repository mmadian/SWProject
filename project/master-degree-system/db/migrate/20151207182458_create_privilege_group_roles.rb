class CreatePrivilegeGroupRoles < ActiveRecord::Migration
  def change
    create_table :privilege_group_roles do |t|
      t.references :privilegeGroup, index: true
      t.references :role, index: true
      t.references :creator, index: true
      t.references :modifier, index: true

      t.timestamps
    end
  end
end
