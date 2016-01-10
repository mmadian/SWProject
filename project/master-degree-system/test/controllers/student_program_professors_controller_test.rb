require 'test_helper'

class StudentProgramProfessorsControllerTest < ActionController::TestCase
  setup do
    @student_program_professor = student_program_professors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_program_professors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_program_professor" do
    assert_difference('StudentProgramProfessor.count') do
      post :create, student_program_professor: { acceptanceDate: @student_program_professor.acceptanceDate, additionDate: @student_program_professor.additionDate, comment: @student_program_professor.comment, creator_id: @student_program_professor.creator_id, hasReceivedCollectiveReport: @student_program_professor.hasReceivedCollectiveReport, hasReceivedIndivdualReport: @student_program_professor.hasReceivedIndivdualReport, hasReceivedSatisfactionReport: @student_program_professor.hasReceivedSatisfactionReport, isAccepted: @student_program_professor.isAccepted, isCommitteeHead: @student_program_professor.isCommitteeHead, isDefenseCommitee: @student_program_professor.isDefenseCommitee, isExternal: @student_program_professor.isExternal, isPrimary: @student_program_professor.isPrimary, modifier_id: @student_program_professor.modifier_id, professor_id: @student_program_professor.professor_id, studentProgram_id: @student_program_professor.studentProgram_id }
    end

    assert_redirected_to student_program_professor_path(assigns(:student_program_professor))
  end

  test "should show student_program_professor" do
    get :show, id: @student_program_professor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_program_professor
    assert_response :success
  end

  test "should update student_program_professor" do
    patch :update, id: @student_program_professor, student_program_professor: { acceptanceDate: @student_program_professor.acceptanceDate, additionDate: @student_program_professor.additionDate, comment: @student_program_professor.comment, creator_id: @student_program_professor.creator_id, hasReceivedCollectiveReport: @student_program_professor.hasReceivedCollectiveReport, hasReceivedIndivdualReport: @student_program_professor.hasReceivedIndivdualReport, hasReceivedSatisfactionReport: @student_program_professor.hasReceivedSatisfactionReport, isAccepted: @student_program_professor.isAccepted, isCommitteeHead: @student_program_professor.isCommitteeHead, isDefenseCommitee: @student_program_professor.isDefenseCommitee, isExternal: @student_program_professor.isExternal, isPrimary: @student_program_professor.isPrimary, modifier_id: @student_program_professor.modifier_id, professor_id: @student_program_professor.professor_id, studentProgram_id: @student_program_professor.studentProgram_id }
    assert_redirected_to student_program_professor_path(assigns(:student_program_professor))
  end

  test "should destroy student_program_professor" do
    assert_difference('StudentProgramProfessor.count', -1) do
      delete :destroy, id: @student_program_professor
    end

    assert_redirected_to student_program_professors_path
  end
end
