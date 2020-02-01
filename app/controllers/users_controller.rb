class UsersController < ApplicationController

  def index
    @users = User.all.order(:full_name)
  end

  def new
    @user = User.new
    load_roles
    respond_to do |format|
      format.js
    end
  end

  def create
    user = User.create(permit_params.merge(status: 'active'))
    redirect_to users_path and return if !user.errors.present?
  end

  def edit
    @user = User.where(id: params[:id]).first
    load_roles
    respond_to do |format|
      format.js
    end
  end

  def update
    user = User.where(id: params[:id]).first
    user.update(permit_params)
    redirect_to users_path and return if !user.errors.present?
  end

  def destroy
    user = User.where(id: params[:id]).first
    user.destroy
    redirect_to users_path
  end

  private

  def permit_params
    params.require(:user).permit(:full_name, :mobile_number, :email, :role)
  end

  def load_roles
    @roles = [['admin', 'Admin'], ['customer_executive', 'Customer Executive']]
  end
end
