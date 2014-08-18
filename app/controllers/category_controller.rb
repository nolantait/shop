class CategoryController < ApplicationController
  def show
    #@category = Category.find_by_name(params[:name])
    @product = Product.find_by category: 'drawing'
  end

  def create
    @category = Category.new(params[:category])
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
