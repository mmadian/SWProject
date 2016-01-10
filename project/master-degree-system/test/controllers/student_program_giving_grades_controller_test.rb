require 'test_helper'

class StudentProgramGivingGradesControllerTest < ActionController::TestCase
  setup do
    @student_program_giving_grade = student_program_giving_grades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_program_giving_grades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_program_giving_grade" do
    assert_difference('StudentProgramGivingGrade.count') do
      post :create, student_program_giving_grade: { creator_id: @student_program_giving_grade.creator_id, finalReportOnGoodnessOfThesis: @student_program_giving_grade.finalReportOnGoodnessOfThesis, hasThesisTitle: @student_program_giving_grade.hasThesisTitle, modifier_id: @student_program_giving_grade.modifier_id, refereeMakingSuggestion: @student_program_giving_grade.refereeMakingSuggestion, refreeComitteeMade: @student_program_giving_grade.refreeComitteeMade, seminarDate: @student_program_giving_grade.seminarDate, studentProgram_id: @student_program_giving_grade.studentProgram_id, thesisAbstract: @student_program_giving_grade.thesisAbstract, thesisGeneralField: @student_program_giving_grade.thesisGeneralField, thesisSpecificField: @student_program_giving_grade.thesisSpecificField, thesisTitleArabic: @student_program_giving_grade.thesisTitleArabic, thiesisTitleEnglish: @student_program_giving_grade.thiesisTitleEnglish }
    end

    assert_redirected_to student_program_giving_grade_path(assigns(:student_program_giving_grade))
  end

  test "should show student_program_giving_grade" do
    get :show, id: @student_program_giving_grade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_program_giving_grade
    assert_response :success
  end

  test "should update student_program_giving_grade" do
    patch :update, id: @student_program_giving_grade, student_program_giving_grade: { creator_id: @student_program_giving_grade.creator_id, finalReportOnGoodnessOfThesis: @student_program_giving_grade.finalReportOnGoodnessOfThesis, hasThesisTitle: @student_program_giving_grade.hasThesisTitle, modifier_id: @student_program_giving_grade.modifier_id, refereeMakingSuggestion: @student_program_giving_grade.refereeMakingSuggestion, refreeComitteeMade: @student_program_giving_grade.refreeComitteeMade, seminarDate: @student_program_giving_grade.seminarDate, studentProgram_id: @student_program_giving_grade.studentProgram_id, thesisAbstract: @student_program_giving_grade.thesisAbstract, thesisGeneralField: @student_program_giving_grade.thesisGeneralField, thesisSpecificField: @student_program_giving_grade.thesisSpecificField, thesisTitleArabic: @student_program_giving_grade.thesisTitleArabic, thiesisTitleEnglish: @student_program_giving_grade.thiesisTitleEnglish }
    assert_redirected_to student_program_giving_grade_path(assigns(:student_program_giving_grade))
  end

  test "should destroy student_program_giving_grade" do
    assert_difference('StudentProgramGivingGrade.count', -1) do
      delete :destroy, id: @student_program_giving_grade
    end

    assert_redirected_to student_program_giving_grades_path
  end
end
