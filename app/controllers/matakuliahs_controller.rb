class MatakuliahsController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_user!, except: [:index]
  def index
    @matakuliah = Matakuliah.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @matakuliah }
    end
  end
  def new
    @matakuliah = Matakuliah.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @matakuliah }
    end
  end
  
  def create
    @matakuliah = Matakuliah.new(params[:matakuliah])
    respond_to do |format|
      if @matakuliah.save
        format.html { redirect_to @matakuliah, :notice => 'Mata Kuliah Berhasil Dibuat.' }
        format.json { render json: @matakuliah, status: :created, location: @matakuliah }
      else
        format.html { render action: "new" }
        format.json { render json: @matakuliah.errors, status: :unprocessable_entity }
      end
    end
    
  end
  
  def edit
    @matakuliah = Matakuliah.find(params[:id])
    
  end
  
  def update
    @matakuliah = Matakuliah.find(params[:id])
        
    respond_to do |format|
      if @matakuliah.update_attributes(params[:matakuliah])
        format.html { redirect_to @matakuliah, :notice => 'Mata Kuliah Berhasil Diperbaharui.'}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @information.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @matakuliah = Matakuliah.find(params[:id])
    @matakuliah.destroy    
    respond_to do |format|
      format.html { redirect_to matakuliahs_path, :notice => 'Mata Kuliah Berhasil Dihapus.' }
      format.json { head :no_content }
    end
  end
  
end
