class ReviewLikesController < ApplicationController
  def create
    @review_like = ReviewLike.create(user_id: current_user.id, review_id: params[:review_id])
    @review_likes = ReviewLike.where(review_id: params[:review_id])
    @review = Review.find(params[:review_id])
  end

  def destroy
    like = ReviewLike.find_by(user_id: current_user.id, review_id: params[:review_id])
    like.destroy
    @review_like = ReviewLike.find_by(user_id: current_user.id, review_id: params[:review_id])
    @review_likes = ReviewLike.where(review_id: params[:review_id])
    @review = Review.find(params[:review_id])
  end
end
