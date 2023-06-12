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

  def edit
    @article = Article.find(params[:id])
  end

  def create 
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save  
      flash[:notice] = "The new article was created succesfully."
      redirect_to (@article)
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "The article was updated succesfully"
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end 
 
end