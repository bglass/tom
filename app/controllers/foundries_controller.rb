class FoundriesController < ApplicationController
  # GET /foundries
  # GET /foundries.json
  def index
    @foundries = Foundry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foundries }
    end
  end

  # GET /foundries/1
  # GET /foundries/1.json
  def show
    @foundry = Foundry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foundry }
    end
  end

  # GET /foundries/new
  # GET /foundries/new.json
  def new
    @foundry = Foundry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foundry }
    end
  end

  # GET /foundries/1/edit
  def edit
    @foundry = Foundry.find(params[:id])
  end

  # POST /foundries
  # POST /foundries.json
  def create
    @foundry = Foundry.new(params[:foundry])

    respond_to do |format|
      if @foundry.save
        format.html { redirect_to @foundry, notice: 'Foundry was successfully created.' }
        format.json { render json: @foundry, status: :created, location: @foundry }
      else
        format.html { render action: "new" }
        format.json { render json: @foundry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foundries/1
  # PUT /foundries/1.json
  def update
    @foundry = Foundry.find(params[:id])

    respond_to do |format|
      if @foundry.update_attributes(params[:foundry])
        format.html { redirect_to @foundry, notice: 'Foundry was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @foundry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foundries/1
  # DELETE /foundries/1.json
  def destroy
    @foundry = Foundry.find(params[:id])
    @foundry.destroy

    respond_to do |format|
      format.html { redirect_to foundries_url }
      format.json { head :ok }
    end
  end
end
