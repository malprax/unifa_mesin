class ArticlesController < ApplicationController
  load_and_authorize_resource
   before_filter :authenticate_user!, except: [:index]
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.create(params[:article])
    if @article.save
      redirect_to(@article, :notice => 'Halaman Berhasil Dibuat.')
    else
      render 'new'
    end    
  end
  
  def edit
    @article = Article.find(params[:id])
   
  end
  
  def update 
    @article = Article.find(params[:id]) 
    if @article.update_attributes(params[:article])
      redirect_to(@article, :notice => 'Artikel Berhasil Di Update.')
    else
      render 'edit'
    end      
  end
  
  
  
  def show
    @article = Article.find(params[:id])    
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path    
  end 
  
end
