class CategoriesController < ApplicationController

  # def index
  #   @all_categories = Category.all
  # end

  def new
    @create_category = Category.new
  end

  def create
    @create_category = Category.new(categories_params)
    if @create_category.save 
      redirect_to '/categories/new'
    else 
      flash.now[:error] = "Please Enter a Unique Category" 
      render :new
      end
    end

  def categories_params
    params.require(:category).permit(:name, :created_at)
  end

end