json.array!(@program_class_statuses) do |program_class_status|
  json.extract! program_class_status, :id, :programClass_id, :preProgramClass_id, :status, :creator_id, :modifier_id
  json.url program_class_status_url(program_class_status, format: :json)
end
