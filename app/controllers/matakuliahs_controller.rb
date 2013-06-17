class MatakuliahsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @matakuliah = Matakuliah.all
  end
  def new
    @matakuliah = Matakuliah.new
  end
  
  def create
    @matakuliah = Matakuliah.new(params[:matakuliah])
    if @matakuliah.save
      redirect_to matakuliahs_path, :notice => 'Mata Kuliah Berhasil Dibuat.'     
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
      redirect_to matakuliahs_path, :notice => 'Mata Kuliah Berhasil Diperbaharui.'
    else
      render 'edit'
    end
  end
  
  def destroy
    @matakuliah = Matakuliah.find(params[:id])
    @matakuliah.destroy
    redirect_to matakuliahs_path, :notice => 'Mata Kuliah Berhasil Dihapus.'
  end
  
end
