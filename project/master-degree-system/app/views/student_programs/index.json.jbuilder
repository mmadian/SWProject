json.array!(@student_programs) do |student_program|
  json.extract! student_program, :id, :student_id, :ProgramClass_id, :finishedToefl, :toeflDate, :hasResearchPoint, :puplishedAPaper, :programStartDate, :isVTMENAprogram, :creator_id, :modifier_id
  json.url student_program_url(student_program, format: :json)
end
