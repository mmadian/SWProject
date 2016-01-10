require 'test_helper'

class StudentProgramStatusHistoriesControllerTest < ActionController::TestCase
  setup do
    @student_program_status_history = student_program_status_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_program_status_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_program_status_history" do
    assert_difference('StudentProgramStatusHistory.count') do
      post :create, student_program_status_history: { comments: @student_program_status_history.comments, creator_id: @student_program_status_history.creator_id, date: @student_program_status_history.date, modifier_id: @student_program_status_history.modifier_id, programClassStatus_id: @student_program_status_history.programClassStatus_id, studentProgram_id: @student_program_status_history.studentProgram_id }
    end

    assert_redirected_to student_program_status_history_path(assigns(:student_program_status_history))
  end

  test "should show student_program_status_history" do
    get :show, id: @student_program_status_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_program_status_history
    assert_response :success
  end

  test "should update student_program_status_history" do
    patch :update, id: @student_program_status_history, student_program_status_history: { comments: @student_program_status_history.comments, creator_id: @student_program_status_history.creator_id, date: @student_program_status_history.date, modifier_id: @student_program_status_history.modifier_id, programClassStatus_id: @student_program_status_history.programClassStatus_id, studentProgram_id: @student_program_status_history.studentProgram_id }
    assert_redirected_to student_program_status_history_path(assigns(:student_program_status_history))
  end

  test "should destroy student_program_status_history" do
    assert_difference('StudentProgramStatusHistory.count', -1) do
      delete :destroy, id: @student_program_status_history
    end

    assert_redirected_to student_program_status_histories_path
  end
end
