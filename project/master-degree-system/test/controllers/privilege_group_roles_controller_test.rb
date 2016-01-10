require 'test_helper'

class PrivilegeGroupRolesControllerTest < ActionController::TestCase
  setup do
    @privilege_group_role = privilege_group_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:privilege_group_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create privilege_group_role" do
    assert_difference('PrivilegeGroupRole.count') do
      post :create, privilege_group_role: { creator_id: @privilege_group_role.creator_id, modifier_id: @privilege_group_role.modifier_id, privilegeGroup_id: @privilege_group_role.privilegeGroup_id, role_id: @privilege_group_role.role_id }
    end

    assert_redirected_to privilege_group_role_path(assigns(:privilege_group_role))
  end

  test "should show privilege_group_role" do
    get :show, id: @privilege_group_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @privilege_group_role
    assert_response :success
  end

  test "should update privilege_group_role" do
    patch :update, id: @privilege_group_role, privilege_group_role: { creator_id: @privilege_group_role.creator_id, modifier_id: @privilege_group_role.modifier_id, privilegeGroup_id: @privilege_group_role.privilegeGroup_id, role_id: @privilege_group_role.role_id }
    assert_redirected_to privilege_group_role_path(assigns(:privilege_group_role))
  end

  test "should destroy privilege_group_role" do
    assert_difference('PrivilegeGroupRole.count', -1) do
      delete :destroy, id: @privilege_group_role
    end

    assert_redirected_to privilege_group_roles_path
  end
end
