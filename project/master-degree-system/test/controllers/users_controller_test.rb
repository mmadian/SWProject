require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { creator_id: @user.creator_id, email: @user.email, imageURL: @user.imageURL, mobileNumber: @user.mobileNumber, modifier_id: @user.modifier_id, name: @user.name, nationalID: @user.nationalID, password: @user.password, phoneNumber: @user.phoneNumber, userType_id: @user.userType_id }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { creator_id: @user.creator_id, email: @user.email, imageURL: @user.imageURL, mobileNumber: @user.mobileNumber, modifier_id: @user.modifier_id, name: @user.name, nationalID: @user.nationalID, password: @user.password, phoneNumber: @user.phoneNumber, userType_id: @user.userType_id }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
