class ArticlesController < ApplicationController
  
  def show
    #params hash @ is used to convert article in an instant variable
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all  
  end


end