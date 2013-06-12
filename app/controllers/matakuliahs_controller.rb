class MatakuliahsController < ApplicationController
  def index
  end
  def new
    @matakuliah = Matakuliah.new
  end
end
