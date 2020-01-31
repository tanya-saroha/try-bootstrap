class UsersController < ApplicationController

  def index
    @users = User.all.order(:full_name)
  end

  def new
    @user = User.new
    respond_to do |format|
      format.js
    end
  end

  def create
    user = User.create(permit_params.merge(status: 'active'))
    redirect_to users_path and return if !user.errors.present?
  end

  private

  def permit_params
    params.require(:user).permit(:full_name, :mobile_number, :email, :role)
  end
end
