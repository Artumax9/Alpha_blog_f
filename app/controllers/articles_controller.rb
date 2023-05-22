class ArticlesController < ApplicationController
  
  def show
    #params hash @ is used to convert article in an instant variable
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all  
  end

  def new
  
  end

  def create 
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save  
    redirect_to (@article)
  end

end