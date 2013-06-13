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
  
end
