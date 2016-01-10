require 'test_helper'

class StudentProgramWarningHistoriesControllerTest < ActionController::TestCase
  setup do
    @student_program_warning_history = student_program_warning_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_program_warning_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_program_warning_history" do
    assert_difference('StudentProgramWarningHistory.count') do
      post :create, student_program_warning_history: { creator_id: @student_program_warning_history.creator_id, date: @student_program_warning_history.date, modifier_id: @student_program_warning_history.modifier_id, studentProgram_id: @student_program_warning_history.studentProgram_id, warning: @student_program_warning_history.warning }
    end

    assert_redirected_to student_program_warning_history_path(assigns(:student_program_warning_history))
  end

  test "should show student_program_warning_history" do
    get :show, id: @student_program_warning_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_program_warning_history
    assert_response :success
  end

  test "should update student_program_warning_history" do
    patch :update, id: @student_program_warning_history, student_program_warning_history: { creator_id: @student_program_warning_history.creator_id, date: @student_program_warning_history.date, modifier_id: @student_program_warning_history.modifier_id, studentProgram_id: @student_program_warning_history.studentProgram_id, warning: @student_program_warning_history.warning }
    assert_redirected_to student_program_warning_history_path(assigns(:student_program_warning_history))
  end

  test "should destroy student_program_warning_history" do
    assert_difference('StudentProgramWarningHistory.count', -1) do
      delete :destroy, id: @student_program_warning_history
    end

    assert_redirected_to student_program_warning_histories_path
  end
end
