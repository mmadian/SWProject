json.array!(@course_classes) do |course_class|
  json.extract! course_class, :id, :courseClassName, :creator_id, :modifier_id
  json.url course_class_url(course_class, format: :json)
end
