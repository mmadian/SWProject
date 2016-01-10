json.array!(@student_program_status_histories) do |student_program_status_history|
  json.extract! student_program_status_history, :id, :studentProgram_id, :programClassStatus_id, :date, :comments, :creator_id, :modifier_id
  json.url student_program_status_history_url(student_program_status_history, format: :json)
end
