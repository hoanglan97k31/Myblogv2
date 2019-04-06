class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: %i[show]
  before_action :category, only: %i[show edit update destroy]
  before_action :article, only: %i[show]
  def index
    @categories = Category.created_at_desc
  end

  def show
    @articles = Article.created_at_desc
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    return render :new unless @category.save
    redirect_to @category
  end

  def edit; end

  def update
    return render :edit unless @category.update(category_params)
    redirect_to @category
  end

  def destroy
    message = @category.destroy ? t('.success') : t('.error')
    redirect_to categories_path
  end

  private

  def category
    @category = Category.find_by(id: params[:id])
  end

  def article
    @article = Article.find_by(id: params[:id])
  end

  def category_params
    params.require(:category).permit(:title, :description)
  end
end
