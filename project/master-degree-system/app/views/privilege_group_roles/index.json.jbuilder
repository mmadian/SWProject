json.array!(@privilege_group_roles) do |privilege_group_role|
  json.extract! privilege_group_role, :id, :privilegeGroup_id, :role_id, :creator_id, :modifier_id
  json.url privilege_group_role_url(privilege_group_role, format: :json)
end
