json.array!(@students) do |student|
  json.extract! student, :id, :user_id, :creator_id, :modifier_id
  json.url student_url(student, format: :json)
end
