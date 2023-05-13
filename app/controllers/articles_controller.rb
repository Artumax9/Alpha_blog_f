class ArticlesController < ApplicationController
  def show
    #params hash
    ## @ convert article in an instant variable
    #binding.break 
    @article = Article.find(params[:id])
  end
end