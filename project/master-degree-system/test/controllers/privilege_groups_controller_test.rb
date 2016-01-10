require 'test_helper'

class PrivilegeGroupsControllerTest < ActionController::TestCase
  setup do
    @privilege_group = privilege_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:privilege_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create privilege_group" do
    assert_difference('PrivilegeGroup.count') do
      post :create, privilege_group: { creator_id: @privilege_group.creator_id, modifier_id: @privilege_group.modifier_id, name: @privilege_group.name }
    end

    assert_redirected_to privilege_group_path(assigns(:privilege_group))
  end

  test "should show privilege_group" do
    get :show, id: @privilege_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @privilege_group
    assert_response :success
  end

  test "should update privilege_group" do
    patch :update, id: @privilege_group, privilege_group: { creator_id: @privilege_group.creator_id, modifier_id: @privilege_group.modifier_id, name: @privilege_group.name }
    assert_redirected_to privilege_group_path(assigns(:privilege_group))
  end

  test "should destroy privilege_group" do
    assert_difference('PrivilegeGroup.count', -1) do
      delete :destroy, id: @privilege_group
    end

    assert_redirected_to privilege_groups_path
  end
end
