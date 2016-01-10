json.array!(@program_class_semester_courses) do |program_class_semester_course|
  json.extract! program_class_semester_course, :id, :specificCourseName, :minimamNumberOfStudent, :course_id, :semester_id, :CourseClass_id, :ProgramClass_id, :year, :directedReading, :courseCode, :creator_id, :modifier_id
  json.url program_class_semester_course_url(program_class_semester_course, format: :json)
end
