class AkreditasisController < ApplicationController
  # GET /akreditasis
  # GET /akreditasis.json
  def index
    @akreditasis = Akreditasi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @akreditasis }
    end
  end

  # GET /akreditasis/1
  # GET /akreditasis/1.json
  def show
    @akreditasi = Akreditasi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @akreditasi }
    end
  end

  # GET /akreditasis/new
  # GET /akreditasis/new.json
  def new
    @akreditasi = Akreditasi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @akreditasi }
    end
  end

  # GET /akreditasis/1/edit
  def edit
    @akreditasi = Akreditasi.find(params[:id])
  end

  # POST /akreditasis
  # POST /akreditasis.json
  def create
    @akreditasi = Akreditasi.new(params[:akreditasi])

    respond_to do |format|
      if @akreditasi.save
        format.html { redirect_to @akreditasi, notice: 'Akreditasi was successfully created.' }
        format.json { render json: @akreditasi, status: :created, location: @akreditasi }
      else
        format.html { render action: "new" }
        format.json { render json: @akreditasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /akreditasis/1
  # PUT /akreditasis/1.json
  def update
    @akreditasi = Akreditasi.find(params[:id])

    respond_to do |format|
      if @akreditasi.update_attributes(params[:akreditasi])
        format.html { redirect_to @akreditasi, notice: 'Akreditasi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @akreditasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /akreditasis/1
  # DELETE /akreditasis/1.json
  def destroy
    @akreditasi = Akreditasi.find(params[:id])
    @akreditasi.destroy

    respond_to do |format|
      format.html { redirect_to akreditasis_url }
      format.json { head :no_content }
    end
  end
end
