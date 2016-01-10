json.array!(@universities) do |university|
  json.extract! university, :id, :name, :creator_id, :modifier_id
  json.url university_url(university, format: :json)
end
