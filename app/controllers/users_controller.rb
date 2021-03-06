class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    product_ids = @user.reviews.group(:product_id).order('count_product_id DESC').count(:product_id).keys
    @reviews = product_ids.map { |id| Product.find(id) }
  end

  def edit
    current_user.build_image if current_user.image.blank?
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
    params.require(:user).permit(:nickname, :email, :gender, :introduction, :image_cache, image_attributes: [:id, :image_url])
  end

end
