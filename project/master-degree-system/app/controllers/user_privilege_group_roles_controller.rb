class UserPrivilegeGroupRolesController < ApplicationController
  before_action :set_user_privilege_group_role, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @user_privilege_group_roles = UserPrivilegeGroupRole.all
    respond_with(@user_privilege_group_roles)
  end

  def show
    respond_with(@user_privilege_group_role)
  end

  def new
    @user_privilege_group_role = UserPrivilegeGroupRole.new
    respond_with(@user_privilege_group_role)
  end

  def edit
  end

  def create
    @user_privilege_group_role = UserPrivilegeGroupRole.new(user_privilege_group_role_params)
    @user_privilege_group_role.save
    respond_with(@user_privilege_group_role)
  end

  def update
    @user_privilege_group_role.update(user_privilege_group_role_params)
    respond_with(@user_privilege_group_role)
  end

  def destroy
    @user_privilege_group_role.destroy
    respond_with(@user_privilege_group_role)
  end

  private
    def set_user_privilege_group_role
      @user_privilege_group_role = UserPrivilegeGroupRole.find(params[:id])
    end

    def user_privilege_group_role_params
      params.require(:user_privilege_group_role).permit(:user_id, :privilegeGroupRole_id, :role_id, :creator_id, :modifier_id)
    end
end
