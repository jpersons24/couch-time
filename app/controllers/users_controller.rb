class UsersController < ApplicationController

  def index
    @users = User.all 
    render :index
  end

  def new
    @user = User.new()
    render :new
  end

  def create
    @user = User.create(user_params)

    redirect_to users_path
  end

  private

  def user_params
    params[:user].permit(:name, :age, :bio)
  end

end