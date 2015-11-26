class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
  end

  def new
    
  end

  def edit
  end

  def create
    # render plain: params[:category].inspect
    @category = Category.new(category_params)

    @category.save
    redirect_to "/categories/index"
  end

  def update
  end

  def destory
  end
  def category_params
    params.require(:category).permit(:name)
  end
end
