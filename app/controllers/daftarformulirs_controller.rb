class DaftarformulirsController < ApplicationController
  # GET /daftarformulirs
  # GET /daftarformulirs.json
  before_filter :authenticate_user!, except: [:show]
  def index
    @daftarformulirs = Daftarformulir.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daftarformulirs }
    end
  end

  # GET /daftarformulirs/1
  # GET /daftarformulirs/1.json
  def show
    @daftarformulir = Daftarformulir.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daftarformulir }
    end
  end

  # GET /daftarformulirs/new
  # GET /daftarformulirs/new.json
  def new
    @daftarformulir = Daftarformulir.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daftarformulir }
    end
  end

  # GET /daftarformulirs/1/edit
  def edit
    @daftarformulir = Daftarformulir.find(params[:id])
  end

  # POST /daftarformulirs
  # POST /daftarformulirs.json
  def create
    @daftarformulir = Daftarformulir.new(params[:daftarformulir])

    respond_to do |format|
      if @daftarformulir.save
        format.html { redirect_to @daftarformulir, notice: 'Daftarformulir was successfully created.' }
        format.json { render json: @daftarformulir, status: :created, location: @daftarformulir }
      else
        format.html { render action: "new" }
        format.json { render json: @daftarformulir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daftarformulirs/1
  # PUT /daftarformulirs/1.json
  def update
    @daftarformulir = Daftarformulir.find(params[:id])

    respond_to do |format|
      if @daftarformulir.update_attributes(params[:daftarformulir])
        format.html { redirect_to @daftarformulir, notice: 'Daftarformulir was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daftarformulir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daftarformulirs/1
  # DELETE /daftarformulirs/1.json
  def destroy
    @daftarformulir = Daftarformulir.find(params[:id])
    @daftarformulir.destroy

    respond_to do |format|
      format.html { redirect_to daftarformulirs_url }
      format.json { head :no_content }
    end
  end
end
