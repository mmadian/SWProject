require 'test_helper'

class StudentProgramsControllerTest < ActionController::TestCase
  setup do
    @student_program = student_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_program" do
    assert_difference('StudentProgram.count') do
      post :create, student_program: { ProgramClass_id: @student_program.ProgramClass_id, creator_id: @student_program.creator_id, finishedToefl: @student_program.finishedToefl, hasResearchPoint: @student_program.hasResearchPoint, isVTMENAprogram: @student_program.isVTMENAprogram, modifier_id: @student_program.modifier_id, programStartDate: @student_program.programStartDate, puplishedAPaper: @student_program.puplishedAPaper, student_id: @student_program.student_id, toeflDate: @student_program.toeflDate }
    end

    assert_redirected_to student_program_path(assigns(:student_program))
  end

  test "should show student_program" do
    get :show, id: @student_program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_program
    assert_response :success
  end

  test "should update student_program" do
    patch :update, id: @student_program, student_program: { ProgramClass_id: @student_program.ProgramClass_id, creator_id: @student_program.creator_id, finishedToefl: @student_program.finishedToefl, hasResearchPoint: @student_program.hasResearchPoint, isVTMENAprogram: @student_program.isVTMENAprogram, modifier_id: @student_program.modifier_id, programStartDate: @student_program.programStartDate, puplishedAPaper: @student_program.puplishedAPaper, student_id: @student_program.student_id, toeflDate: @student_program.toeflDate }
    assert_redirected_to student_program_path(assigns(:student_program))
  end

  test "should destroy student_program" do
    assert_difference('StudentProgram.count', -1) do
      delete :destroy, id: @student_program
    end

    assert_redirected_to student_programs_path
  end
end
