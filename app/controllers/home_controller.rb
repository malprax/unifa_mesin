class HomeController < ApplicationController
  def index
    @articles = Article.all
    @diktinews = Diktinews.all
    @information = Information.all
  end
    
end
