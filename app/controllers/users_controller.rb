class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).permit(:username, :password))

    if @user.errors.any?
      render :new
    else
      session[:user_id] = @user.id

      redirect_to '/welcome'
    end
  end

  def index
    @users = User.all
  end
end
