
class ScantypesController < ApplicationController
  # GET /scantypes
  # GET /scantypes.json
  def index
    @scantypes = Scantype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scantypes }
    end
  end

  # GET /scantypes/1
  # GET /scantypes/1.json
  def show
    @scantype = Scantype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scantype }
    end
  end

  # GET /scantypes/new
  # GET /scantypes/new.json
  def new
    @scantype = Scantype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scantype }
    end
  end

  # GET /scantypes/1/edit
  def edit
    @scantype = Scantype.find(params[:id])
  end

  # POST /scantypes
  # POST /scantypes.json
  def create
    @scantype = Scantype.new(params[:scantype])

    respond_to do |format|
      if @scantype.save
        format.html { redirect_to @scantype, notice: 'Scantype was successfully created.' }
        format.json { render json: @scantype, status: :created, location: @scantype }
      else
        format.html { render action: "new" }
        format.json { render json: @scantype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scantypes/1
  # PUT /scantypes/1.json
  def update
    @scantype = Scantype.find(params[:id])

    respond_to do |format|
      if @scantype.update_attributes(params[:scantype])
        format.html { redirect_to @scantype, notice: 'Scantype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scantype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scantypes/1
  # DELETE /scantypes/1.json
  def destroy
    @scantype = Scantype.find(params[:id])
    @scantype.destroy

    respond_to do |format|
      format.html { redirect_to scantypes_url }
      format.json { head :no_content }
    end
  end
end
