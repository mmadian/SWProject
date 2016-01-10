require 'test_helper'

class ProfessorTitlesControllerTest < ActionController::TestCase
  setup do
    @professor_title = professor_titles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professor_titles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professor_title" do
    assert_difference('ProfessorTitle.count') do
      post :create, professor_title: { creator_id: @professor_title.creator_id, date: @professor_title.date, modifier_id: @professor_title.modifier_id, name: @professor_title.name }
    end

    assert_redirected_to professor_title_path(assigns(:professor_title))
  end

  test "should show professor_title" do
    get :show, id: @professor_title
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professor_title
    assert_response :success
  end

  test "should update professor_title" do
    patch :update, id: @professor_title, professor_title: { creator_id: @professor_title.creator_id, date: @professor_title.date, modifier_id: @professor_title.modifier_id, name: @professor_title.name }
    assert_redirected_to professor_title_path(assigns(:professor_title))
  end

  test "should destroy professor_title" do
    assert_difference('ProfessorTitle.count', -1) do
      delete :destroy, id: @professor_title
    end

    assert_redirected_to professor_titles_path
  end
end
