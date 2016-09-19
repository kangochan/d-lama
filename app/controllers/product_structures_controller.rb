class ProductStructuresController < ApplicationController
  def new
    @product=Product.find(params[:product_id])
    @product_structure = ProductStructure.new
  end

  def create
    @product_structure = ProductStructure.new(create_params)
    @product_structure.save
    redirect_to controller: :product_structures, action: :new
  end

  private
  def create_params
    params.require(:product_structure).permit(:subtitle, :story_number).merge(product_id: params[:product_id])
  end
end
