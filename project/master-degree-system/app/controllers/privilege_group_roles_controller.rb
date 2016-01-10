class PrivilegeGroupRolesController < ApplicationController
  before_action :set_privilege_group_role, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @privilege_group_roles = PrivilegeGroupRole.all
    respond_with(@privilege_group_roles)
  end

  def show
    respond_with(@privilege_group_role)
  end

  def new
    @privilege_group_role = PrivilegeGroupRole.new
    respond_with(@privilege_group_role)
  end

  def edit
  end

  def create
    @privilege_group_role = PrivilegeGroupRole.new(privilege_group_role_params)
    @privilege_group_role.save
    respond_with(@privilege_group_role)
  end

  def update
    @privilege_group_role.update(privilege_group_role_params)
    respond_with(@privilege_group_role)
  end

  def destroy
    @privilege_group_role.destroy
    respond_with(@privilege_group_role)
  end

  private
    def set_privilege_group_role
      @privilege_group_role = PrivilegeGroupRole.find(params[:id])
    end

    def privilege_group_role_params
      params.require(:privilege_group_role).permit(:privilegeGroup_id, :role_id, :creator_id, :modifier_id)
    end
end
