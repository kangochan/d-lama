class ProductLikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, product_id: params[:product_id])
    @likes = Like.where(product_id: params[:product_id])
    @tweets = Tweet.all
  end
  def destroy
    @like = Like.find_by(user_id: current_user.id, product_id: params[:product_id])
    @likes = Like.where(product_id: params[:product_id])
    @tweets = Tweet.all
  end
end
