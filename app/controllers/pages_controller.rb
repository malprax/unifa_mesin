class PagesController < ApplicationController
  def index
    @pages = Page.all
  end
  
  def new
    @page = Page.new 
  end
  
  def create
    @page = Page.new(params[:page])
    if @page.save
      redirect_to(@page, :notice => 'Page was successfully created.') 
    else
      render "new"
    end
  end
  
  def show
    @page = Page.find_by_permalink!(params[:id])
  end
  
  def edit
    @page = Page.find_by_permalink!(params[:id])
  end
  
  def update
    @page = Page.find_by_permalink!(params[:id])
    
    if @page.update_attributes(params[:page])
      redirect_to(@page, :notice => 'Page was successfully updated.')
    else
      render 'edit'
    end
  end
  
  def destroy    
    @page = Page.find_by_permalink!(params[:id])
    @page.destroy
    redirect_to pages_path
  end
  
end
