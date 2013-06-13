class MatakuliahsController < ApplicationController
  def index
    @matakuliah = Matakuliah.all
  end
  def new
    @matakuliah = Matakuliah.new
  end
  
  def create
    @matakuliah = Matakuliah.new(params[:matakuliah])
    if @matakuliah.save
      redirect_to matakuliahs_path, :notice => 'Page was successfully created.'     
    else
      render "new"
    end
  end
  
  def edit
    @matakuliah = Matakuliah.find(params[:id])
    
  end
  
  def update
    @matakuliah = Matakuliah.find(params[:id])
    if @matakuliah.update_attributes(params[:matakuliah])
      redirect_to matakuliahs_path, :notice => 'Page was successfully updated.'
    else
      render 'edit'
    end
  end
  
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to matakuliahs_path
  end
  
end
