class AddressesController < ApplicationController
  # GET /addresses
  # GET /addresses.json
  def index
    @addresses = Address.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addresses }
    end
  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show
    @address = Address.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @address }
    end
  end

  # GET /addresses/new
  # GET /addresses/new.json
  def new
    @address = Address.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @address }
    end
  end

  # GET /addresses/1/edit
  def edit
    @address = Address.find(params[:id])
  end

  # POST /addresses
  # POST /addresses.json
  def create
    @address = Address.new(params[:address])

    split_url = ENV['CLEARDB_DATABASE_URL'].gsub(/mysql:\/\//,'').split('@')
    credentials = split_url[0].split(':')
    db_location = split_url[1].split('/')
    client = Mysql2::Client.new(
      :username=>credentials[0],
      :password=>credentials[1],
      :host=>db_location[0],
      :database=>db_location[1].split('?')[0])

    route = @address.route.gsub(/Drive/,'').gsub(/Street/,'').gsub(/Place/,'').gsub(/Avenue/,'').gsub(/Trail/,'')
    query = "select Mst_SummaryResYearBuilt,Mst_SummaryResFloorArea from assessordata where Mst_PropAddressStreet like '%#{route}%' and Mst_PropAddressNumber='#{@address.street_number}'"
    puts query
    assesor_result = client.query(query)

    @address.year_built = assesor_result.first ? assesor_result.first['Mst_SummaryResYearBuilt'].to_i : 0
    @address.floor_area = assesor_result.first ? assesor_result.first['Mst_SummaryResFloorArea'].to_i : 0 

    respond_to do |format|
      if @address.save
        format.html { redirect_to @address, notice: 'Address was successfully created.' }
        format.json { render json: @address, status: :created, location: @address }
      else
        format.html { render action: "new" }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /addresses/1
  # PUT /addresses/1.json
  def update
    @address = Address.find(params[:id])

    respond_to do |format|
      if @address.update_attributes(params[:address])
        format.html { redirect_to @address, notice: 'Address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @address = Address.find(params[:id])
    @address.destroy

    respond_to do |format|
      format.html { redirect_to addresses_url }
      format.json { head :no_content }
    end
  end
end
