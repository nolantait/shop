class CategoryController < ApplicationController
  def show
    #@category = Category.find_by_name(params[:name])
    @product = Product.joins(:product).where('category=?', params[:category])
  end
end
