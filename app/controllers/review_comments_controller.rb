class ReviewCommentsController < ApplicationController
  before_action :authenticate_user!, only: :new
  def new
    @review = Review.find(params[:review_id])
    @review_comment = ReviewComment.new
  end

  def create
    product = Product.find(params[:product_id])
    ReviewComment.create(create_params)
    redirect_to controller: :review_comments, action: :new, id: product.id
  end

  private
  def create_params
    params.require(:review_comment).permit(:comment).merge(review_id: params[:review_id], user_id: current_user.id, nickname: current_user.nickname)
  end
end
