require 'test_helper'

class ProfessorsControllerTest < ActionController::TestCase
  setup do
    @professor = professors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professor" do
    assert_difference('Professor.count') do
      post :create, professor: { creator_id: @professor.creator_id, modifier_id: @professor.modifier_id, professorTitle_id: @professor.professorTitle_id, user_id: @professor.user_id }
    end

    assert_redirected_to professor_path(assigns(:professor))
  end

  test "should show professor" do
    get :show, id: @professor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professor
    assert_response :success
  end

  test "should update professor" do
    patch :update, id: @professor, professor: { creator_id: @professor.creator_id, modifier_id: @professor.modifier_id, professorTitle_id: @professor.professorTitle_id, user_id: @professor.user_id }
    assert_redirected_to professor_path(assigns(:professor))
  end

  test "should destroy professor" do
    assert_difference('Professor.count', -1) do
      delete :destroy, id: @professor
    end

    assert_redirected_to professors_path
  end
end
