class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    render plain: params[:article]
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end


  private

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
