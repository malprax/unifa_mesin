class MatakuliahsController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_user!, except: [:index]
  helper_method :sort_column, :sort_direction
  
  
  def index
    @matakuliahs = Matakuliah.order(sort_column+"  "+sort_direction)
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
  
  private
  def sort_column
    Matakuliah.column_names.include?(params[:sort]) ? params[:sort] : "kode"   
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"  
  end
  
    
  
  
  
  
end
