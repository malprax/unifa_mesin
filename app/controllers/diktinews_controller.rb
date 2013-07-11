class DiktinewsController < ApplicationController
  # GET /diktinews
  # GET /diktinews.json
  def index
    @diktinews = Diktinews.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diktinews }
    end
  end

  # GET /diktinews/1
  # GET /diktinews/1.json
  def show
    @diktinews = Diktinews.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diktinews }
    end
  end

  # GET /diktinews/new
  # GET /diktinews/new.json
  def new
    @diktinews = Diktinews.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diktinews }
    end
  end

  # GET /diktinews/1/edit
  def edit
    @diktinews = Diktinews.find(params[:id])
  end

  # POST /diktinews
  # POST /diktinews.json
  def create
    @diktinews = Diktinews.new(params[:diktinews])

    respond_to do |format|
      if @diktinews.save
        format.html { redirect_to @diktinews, notice: 'Berita Dikti berhasil dibuat.' }
        format.json { render json: @diktinews, status: :created, location: @diktinews }
      else
        format.html { render action: "new" }
        format.json { render json: @diktinews.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diktinews/1
  # PUT /diktinews/1.json
  def update
    @diktinews = Diktinews.find(params[:id])

    respond_to do |format|
      if @diktinews.update_attributes(params[:diktinews])
        format.html { redirect_to @diktinews, notice: 'Berita dikti berhasil di updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diktinews.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diktinews/1
  # DELETE /diktinews/1.json
  def destroy
    @diktinews = Diktinews.find(params[:id])
    @diktinews.destroy

    respond_to do |format|
      format.html { redirect_to diktinews_index_url }
      format.json { head :no_content }
    end
  end
end
