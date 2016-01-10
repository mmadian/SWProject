json.array!(@program_classes) do |program_class|
  json.extract! program_class, :id, :name, :duration, :extensionPeriod, :numberOfCourses, :creator_id, :modifier_id
  json.url program_class_url(program_class, format: :json)
end
