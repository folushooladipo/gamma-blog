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
      flash[:notice] = "Article was successfully created."
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
      flash[:notice] = "Article was updated."
      redirect_to @article
    else
      render "edit"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article
      @article.destroy
      redirect_to articles_path
    else
      render plain: "Could not find the article you want to delete."
    end
  end
end
