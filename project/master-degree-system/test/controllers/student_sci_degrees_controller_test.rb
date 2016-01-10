require 'test_helper'

class StudentSciDegreesControllerTest < ActionController::TestCase
  setup do
    @student_sci_degree = student_sci_degrees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_sci_degrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_sci_degree" do
    assert_difference('StudentSciDegree.count') do
      post :create, student_sci_degree: { SciDegreeClass_id: @student_sci_degree.SciDegreeClass_id, creator_id: @student_sci_degree.creator_id, department_id: @student_sci_degree.department_id, faculty_id: @student_sci_degree.faculty_id, fieldOfResearch: @student_sci_degree.fieldOfResearch, gpa: @student_sci_degree.gpa, graduationYear: @student_sci_degree.graduationYear, modifier_id: @student_sci_degree.modifier_id, student_id: @student_sci_degree.student_id, university_id: @student_sci_degree.university_id }
    end

    assert_redirected_to student_sci_degree_path(assigns(:student_sci_degree))
  end

  test "should show student_sci_degree" do
    get :show, id: @student_sci_degree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_sci_degree
    assert_response :success
  end

  test "should update student_sci_degree" do
    patch :update, id: @student_sci_degree, student_sci_degree: { SciDegreeClass_id: @student_sci_degree.SciDegreeClass_id, creator_id: @student_sci_degree.creator_id, department_id: @student_sci_degree.department_id, faculty_id: @student_sci_degree.faculty_id, fieldOfResearch: @student_sci_degree.fieldOfResearch, gpa: @student_sci_degree.gpa, graduationYear: @student_sci_degree.graduationYear, modifier_id: @student_sci_degree.modifier_id, student_id: @student_sci_degree.student_id, university_id: @student_sci_degree.university_id }
    assert_redirected_to student_sci_degree_path(assigns(:student_sci_degree))
  end

  test "should destroy student_sci_degree" do
    assert_difference('StudentSciDegree.count', -1) do
      delete :destroy, id: @student_sci_degree
    end

    assert_redirected_to student_sci_degrees_path
  end
end
