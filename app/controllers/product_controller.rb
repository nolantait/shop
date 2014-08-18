class ProductController < ApplicationController

  def create
    @product = Product.create(params[:product])
  end

  def show
    @product = Product.find_by_id(params[:id])
  end

  def redirect_to_category_id
    @category = Product.find_by_id(params[:category])
    render @category.category.name
  end

  private

  def product_params
    params.require(:product).permit(:photo)
  end



end
