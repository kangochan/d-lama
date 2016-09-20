class ProductsController < ApplicationController
  def index
    @products = Product.order('id ASC').limit(20)
  end
  def show
    @product = Product.find(params[:id])
    if user_signed_in?
      @like = ProductLike.find_by(user_id: current_user.id, product_id: params[:id])
      @review_like = ReviewLike.find_by(user_id: current_user.id)
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(create_params)
    @product.save
    redirect_to controller: :products, action: :index
  end


  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(update_params)
    redirect_to controller: :products, action: :index
  end

  private
  def create_params
    params.require(:product).permit(:title, :detail, :year, :month, :twitter, :facebook, :amazon, :site, :image_url, :company, :director, :playwrite, :site)
  end

  private
  def update_params
    params.require(:product).permit(:title, :detail, :year, :month, :twitter, :facebook, :amazon, :site, :image_url, :company, :director, :playwrite, :site)
  end

end
