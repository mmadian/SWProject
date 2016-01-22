class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @users = User.all
    respond_with(@users)
  end

  def show
    respond_with(@user)
  end

  def new
    @user = User.new
    respond_with(@user)
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    # @user.save
    types = UserType.all.pluck(:name)
    @user.save
    case @user.userType.name
    when "Professor"
      Professor.create!(user_id: @user.id ,creator_id: current_user.id)
    when "Student"
      Student.create!(user_id: @user.id ,creator_id: current_user.id)
    end
    respond_with(@user)
  end

  def update
    @user.update(user_params.reject{|k,v| v.blank?})
    respond_with(@user)
  end

  def destroy
    @user.destroy
    respond_with(@user)
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:userType_id, :nationalID, :name, :imageURL, :mobileNumber, :phoneNumber, :email, :password, :creator_id, :modifier_id)
    end
end
