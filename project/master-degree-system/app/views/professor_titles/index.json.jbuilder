json.array!(@professor_titles) do |professor_title|
  json.extract! professor_title, :id, :name, :date, :creator_id, :modifier_id
  json.url professor_title_url(professor_title, format: :json)
end
