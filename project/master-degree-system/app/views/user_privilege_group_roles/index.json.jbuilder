json.array!(@user_privilege_group_roles) do |user_privilege_group_role|
  json.extract! user_privilege_group_role, :id, :user_id, :privilegeGroupRole_id, :role_id, :creator_id, :modifier_id
  json.url user_privilege_group_role_url(user_privilege_group_role, format: :json)
end
