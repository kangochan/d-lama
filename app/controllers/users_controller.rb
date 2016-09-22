class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    user = User.find(params[:id])
  end

  def create
    current_user.create(user_params)
  end

  def search
    @users = User.where('nickname LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end

  def update
    current_user.update(user_params)
    redirect_to controller: :users, action: :show
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :gender, :introduction)
  end

end
