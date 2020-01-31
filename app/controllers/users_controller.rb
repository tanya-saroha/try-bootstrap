class UsersController < ApplicationController

  def index
    @users = User.all.order(:full_name)
  end
end
