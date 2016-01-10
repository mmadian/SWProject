json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :name, :creator_id, :modifier_id
  json.url faculty_url(faculty, format: :json)
end
