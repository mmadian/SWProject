json.array!(@student_program_courses) do |student_program_course|
  json.extract! student_program_course, :id, :programClassSemesterCourse_id, :studentProgram_id, :gradeClass_id, :subscriptionDate, :gradeValue, :isComplementaryCourse, :creator_id, :modifier_id
  json.url student_program_course_url(student_program_course, format: :json)
end
