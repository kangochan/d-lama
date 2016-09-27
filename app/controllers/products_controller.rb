class ProductsController < ApplicationController

  def index
    @products = Product.where(date_day: Date.today.wday).limit(6)
    @nextproducts = Product.where(date_day: Date.today.next.wday).limit(6)
    product_ids = Review.group(:product_id).order('count_product_id DESC').limit(3).count(:product_id).keys
    @ranking = product_ids.map { |id| Product.find(id) }
  end
  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews.order("created_at DESC").page(params[:page]).per(10)
    if user_signed_in?
      @like = ProductLike.find_by(user_id: current_user.id, product_id: params[:id])
      @review_like = ReviewLike.find_by(user_id: current_user.id)
    end
  end

  def search
    @products = Product.where('title LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end

  def new
    @product = Product.new
    @product.build_image
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to controller: :products, action: :show, id: @product.id
  end


  def edit
    @product = Product.find(params[:id])
    @product.build_image if @product.image.blank?
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to controller: :products, action: :show, id: @product.id
  end

  private
  def product_params
    params.require(:product).permit(:title, :detail, :date, :twitter, :wikipedia, :amazon, :site, :image_url, :company, :director, :playwrite, :site, :date_day, image_attributes: [:id, :image_url])
  end

end
