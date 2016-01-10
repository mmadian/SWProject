json.array!(@departments) do |department|
  json.extract! department, :id, :name, :creator_id, :modifier_id
  json.url department_url(department, format: :json)
end
