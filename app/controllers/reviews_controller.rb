class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: :new
  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    product = Product.find(params[:product_id])
    Review.create(create_params)
    redirect_to controller: :products, action: :show, id: product.id
  end

  private
  def create_params
    params.require(:review).permit(:rate, :title, :review).merge(product_id: params[:product_id], user_id: current_user.id)
  end
end
