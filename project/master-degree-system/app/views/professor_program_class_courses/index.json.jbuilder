json.array!(@professor_program_class_courses) do |professor_program_class_course|
  json.extract! professor_program_class_course, :id, :professor_id, :programClassSemesterCourse, :creator_id, :modifier_id
  json.url professor_program_class_course_url(professor_program_class_course, format: :json)
end
