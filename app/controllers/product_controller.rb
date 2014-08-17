class ProductController < ApplicationController

  def create
    @product = Product.create(params[:product])
  end

  def product_params
    params.require(:product).permit(:title, :category, :price, :slideshow, product_images: [:photo])
  end



end
