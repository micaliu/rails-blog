class CategoriesController < ApplicationController
  # layout "blog"
  before_action :set_category, only: [:show, :edit, :destory, :update]
  
  def index
    @categories = Category.all

  end

  def show
 
  end

  def new
    @category = Category.new
  end

  def edit

  end

  def create
    # render plain: params[:category].inspect
    @category = Category.new(category_params)

    if @category.save
       redirect_to @category
    else
      render 'new'
    end
  end

  def update
      if @category.update(category_params)
        redirect_to @category
      else
        render 'edit'
      end
  end

  def destroy

      @category.destroy
     
      redirect_to categories_path
  end

  private
  def set_category
    @category = Category.find(params[:id])
  end
  def category_params
    params.require(:category).permit(:id, :name)
  end
end
