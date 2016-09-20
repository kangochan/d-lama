class ProductLikesController < ApplicationController
  def create
    @like = ProductLike.create(user_id: current_user.id, product_id: params[:product_id])
    @likes = ProductLike.where(product_id: params[:product_id])
    @product = Product.find(params[:product_id])
  end

  def destroy
    like = ProductLike.find_by(user_id: current_user.id, product_id: params[:product_id])
    like.destroy
    @like = ProductLike.find_by(user_id: current_user.id, product_id: params[:product_id])
    @likes = ProductLike.where(product_id: params[:product_id])
    @product = Product.find(params[:product_id])
  end
end
