class PrivilegeGroupsController < ApplicationController
  before_action :set_privilege_group, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @privilege_groups = PrivilegeGroup.all
    respond_with(@privilege_groups)
  end

  def show
    respond_with(@privilege_group)
  end

  def new
    @privilege_group = PrivilegeGroup.new
    respond_with(@privilege_group)
  end

  def edit
  end

  def create
    @privilege_group = PrivilegeGroup.new(privilege_group_params)
    @privilege_group.save
    respond_with(@privilege_group)
  end

  def update
    @privilege_group.update(privilege_group_params)
    respond_with(@privilege_group)
  end

  def destroy
    @privilege_group.destroy
    respond_with(@privilege_group)
  end

  private
    def set_privilege_group
      @privilege_group = PrivilegeGroup.find(params[:id])
    end

    def privilege_group_params
      params.require(:privilege_group).permit(:name, :creator_id, :modifier_id)
    end
end
