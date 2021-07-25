class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to @article
  end

  def update
    @article = Article.find(params[:id])
    @article.update(params.require(:article).permit(:title, :description))
    redirect_to @article
  end
end
