class ArticlesController < ApplicationController
  
  def show
    #params hash @ is used to convert article in an instant variable
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all  
  end

  def new
    #for the first time to load the new template
    @article = Article.new  
  end

  def create 
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save  
      flash[:notice] = "The new article was suscesfully created."
      redirect_to (@article)
    else
      render 'new'
    end
  end
end