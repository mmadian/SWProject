json.array!(@student_program_professors) do |student_program_professor|
  json.extract! student_program_professor, :id, :studentProgram_id, :professor_id, :isPrimary, :isDefenseCommitee, :comment, :additionDate, :isAccepted, :acceptanceDate, :isExternal, :hasReceivedIndivdualReport, :hasReceivedCollectiveReport, :hasReceivedSatisfactionReport, :isCommitteeHead, :creator_id, :modifier_id
  json.url student_program_professor_url(student_program_professor, format: :json)
end
