class WithReviewsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @reviews = @user.reviews.includes(:product)
  end

end
