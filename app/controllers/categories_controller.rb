class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(categories_params)
    @categories = Category.all
    if @category.save 
      redirect_to new_category_path
    else 
      flash.now[:error] = "Please Enter a Unique Category" 
      render :new
      end
    end

  def edit
    @category = Category.find(params[:id])
    category.edit
    redirect_to new_category_path
  end


  def destroy
    @category = Category.find(params[:id])
    @category.delete
    redirect_to new_category_path
  end

  def categories_params
    params.require(:category).permit(:name, :created_at)
  end

end