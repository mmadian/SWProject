json.array!(@privilege_groups) do |privilege_group|
  json.extract! privilege_group, :id, :name, :creator_id, :modifier_id
  json.url privilege_group_url(privilege_group, format: :json)
end
