class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: %i[show]
  before_action :article, only: %i[show edit update destroy]

  def index
    @articles = Article.created_at_desc
  end

  def show; end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new article_params
    return render :new unless @article.save
    redirect_to @article
  end

  def edit; end

  def update
    return render :edit unless @article.update(article_params)
    redirect_to @article
  end

  def destroy
    message = @article.destroy ? t('.success') : t('.error')
    redirect_to articles_path
  end

  private

  def article
    @article = Article.find_by(id: params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :short_description, :description)
  end
end
