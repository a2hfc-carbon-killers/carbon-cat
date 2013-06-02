class EnergybillsController < ApplicationController
  # GET /energybills
  # GET /energybills.json
  def index
    @energybills = Energybill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @energybills }
    end
  end

  # GET /energybills/1
  # GET /energybills/1.json
  def show
    @energybill = Energybill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @energybill }
    end
  end

  # GET /energybills/new
  # GET /energybills/new.json
  def new
    @energybill = Energybill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @energybill }
    end
  end

  # GET /energybills/1/edit
  def edit
    @energybill = Energybill.find(params[:id])
  end

  # POST /energybills
  # POST /energybills.json
  def create
    @energybill = Energybill.new(params[:energybill])

    respond_to do |format|
      if @energybill.save
        format.html { redirect_to @energybill, notice: 'Energybill was successfully created.' }
        format.json { render json: @energybill, status: :created, location: @energybill }
      else
        format.html { render action: "new" }
        format.json { render json: @energybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /energybills/1
  # PUT /energybills/1.json
  def update
    @energybill = Energybill.find(params[:id])

    respond_to do |format|
      if @energybill.update_attributes(params[:energybill])
        format.html { redirect_to @energybill, notice: 'Energybill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @energybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /energybills/1
  # DELETE /energybills/1.json
  def destroy
    @energybill = Energybill.find(params[:id])
    @energybill.destroy

    respond_to do |format|
      format.html { redirect_to energybills_url }
      format.json { head :no_content }
    end
  end
end
