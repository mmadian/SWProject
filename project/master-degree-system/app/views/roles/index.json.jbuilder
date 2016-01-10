json.array!(@roles) do |role|
  json.extract! role, :id, :name, :url, :creator_id, :modifier_id
  json.url role_url(role, format: :json)
end
