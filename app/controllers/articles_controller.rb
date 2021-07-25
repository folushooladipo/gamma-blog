class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      redirect_to @article
    else
      render "articles/new"
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    puts "update was called"
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      redirect_to @article
    else
      render "edit"
    end
  end
end
