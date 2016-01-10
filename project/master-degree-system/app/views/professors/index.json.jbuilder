json.array!(@professors) do |professor|
  json.extract! professor, :id, :user_id, :professorTitle_id, :creator_id, :modifier_id
  json.url professor_url(professor, format: :json)
end
