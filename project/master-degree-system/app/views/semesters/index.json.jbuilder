json.array!(@semesters) do |semester|
  json.extract! semester, :id, :semesterName, :creator_id, :modifier_id
  json.url semester_url(semester, format: :json)
end
