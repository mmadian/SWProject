json.array!(@courses) do |course|
  json.extract! course, :id, :CourseName, :courseCode, :credit_hours, :total_grade, :min_number_of_student, :creator_id, :modifier_id
  json.url course_url(course, format: :json)
end
