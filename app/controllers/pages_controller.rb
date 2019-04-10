class PagesController < ApplicationController
  before_action :article_and_category, only: :show

  def index
    @articles = Article.created_at_desc.page(params[:page]).per(4)
    @categories = Category.created_at_desc
  end
  
  def show; end

  def about; end

  def contact; end

  private

  def article_and_category
    @article = Article.find_by(id: params[:id])
    @category = Category.find_by(id: params[:id])
  end
end
