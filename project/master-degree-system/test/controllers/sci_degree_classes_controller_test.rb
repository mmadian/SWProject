require 'test_helper'

class SciDegreeClassesControllerTest < ActionController::TestCase
  setup do
    @sci_degree_class = sci_degree_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sci_degree_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sci_degree_class" do
    assert_difference('SciDegreeClass.count') do
      post :create, sci_degree_class: { creator_id: @sci_degree_class.creator_id, modifier_id: @sci_degree_class.modifier_id, name: @sci_degree_class.name }
    end

    assert_redirected_to sci_degree_class_path(assigns(:sci_degree_class))
  end

  test "should show sci_degree_class" do
    get :show, id: @sci_degree_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sci_degree_class
    assert_response :success
  end

  test "should update sci_degree_class" do
    patch :update, id: @sci_degree_class, sci_degree_class: { creator_id: @sci_degree_class.creator_id, modifier_id: @sci_degree_class.modifier_id, name: @sci_degree_class.name }
    assert_redirected_to sci_degree_class_path(assigns(:sci_degree_class))
  end

  test "should destroy sci_degree_class" do
    assert_difference('SciDegreeClass.count', -1) do
      delete :destroy, id: @sci_degree_class
    end

    assert_redirected_to sci_degree_classes_path
  end
end
