class MenustudiesController < ApplicationController
  # GET /menustudies
  # GET /menustudies.json
  def index
    @menustudies = Menustudy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @menustudies }
    end
  end

  # GET /menustudies/1
  # GET /menustudies/1.json
  def show
    @menustudy = Menustudy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @menustudy }
    end
  end

  # GET /menustudies/new
  # GET /menustudies/new.json
  def new
    @menustudy = Menustudy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @menustudy }
    end
  end

  # GET /menustudies/1/edit
  def edit
    @menustudy = Menustudy.find(params[:id])
  end

  # POST /menustudies
  # POST /menustudies.json
  def create
    @menustudy = Menustudy.new(params[:menustudy])

    respond_to do |format|
      if @menustudy.save
        format.html { redirect_to @menustudy, notice: 'Menustudy was successfully created.' }
        format.json { render json: @menustudy, status: :created, location: @menustudy }
      else
        format.html { render action: "new" }
        format.json { render json: @menustudy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /menustudies/1
  # PUT /menustudies/1.json
  def update
    @menustudy = Menustudy.find(params[:id])

    respond_to do |format|
      if @menustudy.update_attributes(params[:menustudy])
        format.html { redirect_to @menustudy, notice: 'Menustudy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @menustudy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menustudies/1
  # DELETE /menustudies/1.json
  def destroy
    @menustudy = Menustudy.find(params[:id])
    @menustudy.destroy

    respond_to do |format|
      format.html { redirect_to menustudies_url }
      format.json { head :no_content }
    end
  end
end
