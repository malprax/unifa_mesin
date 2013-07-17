class HomeController < ApplicationController
  def index
    @articles = Article.all
    @diktinews = Diktinews.all
  end
  
    
end
