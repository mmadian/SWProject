require 'test_helper'

class UserPrivilegeGroupRolesControllerTest < ActionController::TestCase
  setup do
    @user_privilege_group_role = user_privilege_group_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_privilege_group_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_privilege_group_role" do
    assert_difference('UserPrivilegeGroupRole.count') do
      post :create, user_privilege_group_role: { creator_id: @user_privilege_group_role.creator_id, modifier_id: @user_privilege_group_role.modifier_id, privilegeGroupRole_id: @user_privilege_group_role.privilegeGroupRole_id, role_id: @user_privilege_group_role.role_id, user_id: @user_privilege_group_role.user_id }
    end

    assert_redirected_to user_privilege_group_role_path(assigns(:user_privilege_group_role))
  end

  test "should show user_privilege_group_role" do
    get :show, id: @user_privilege_group_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_privilege_group_role
    assert_response :success
  end

  test "should update user_privilege_group_role" do
    patch :update, id: @user_privilege_group_role, user_privilege_group_role: { creator_id: @user_privilege_group_role.creator_id, modifier_id: @user_privilege_group_role.modifier_id, privilegeGroupRole_id: @user_privilege_group_role.privilegeGroupRole_id, role_id: @user_privilege_group_role.role_id, user_id: @user_privilege_group_role.user_id }
    assert_redirected_to user_privilege_group_role_path(assigns(:user_privilege_group_role))
  end

  test "should destroy user_privilege_group_role" do
    assert_difference('UserPrivilegeGroupRole.count', -1) do
      delete :destroy, id: @user_privilege_group_role
    end

    assert_redirected_to user_privilege_group_roles_path
  end
end
