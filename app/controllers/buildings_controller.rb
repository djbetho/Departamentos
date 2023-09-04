class BuildingsController < ApplicationController
  before_action :set_building, only: %i[ show edit update destroy ]
  before_action :set_characteristics, only: %i[ new edit create update]

  before_action :consultar_caracteristicas, only: %i[ new edit create update ]

  before_action :set_cities, only: %i[ new edit create update]



  before_action only: [ :create, :new, :destroy ] do
    authorize_request(["admin"])
  end
  before_action only: [ :edit, :update ] do
    authorize_request(["admin","concerje"])
  end
   
 
  def set_characteristics
    @characteristics = Characteristic.all
   end

  # GET /buildings or /buildings.json
  def index
    @buildings = Building.all
  end

  # GET /buildings/1 or /buildings/1.json
  def show
  end

  # GET /buildings/new
  def new
    @building = Building.new
    @building.characteristics.build
  end

  # GET /buildings/1/edit
  def edit
  end

  # POST /buildings or /buildings.json
  def create
    @building = Building.new(building_params)
     
    respond_to do |format|
      if @building.save
        format.html { redirect_to building_url(@building), notice: "Building was successfully created." }
        format.json { render :show, status: :created, location: @building }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildings/1 or /buildings/1.json
  def update
    respond_to do |format|
      if @building.update(building_params)
 
        format.html { redirect_to building_url(@building), notice: "Building was successfully updated." }
        format.json { render :show, status: :ok, location: @building }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildings/1 or /buildings/1.json
  def destroy
    @building.destroy

    respond_to do |format|
      format.html { redirect_to buildings_url, notice: "Building was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building
      @building = Building.find(params[:id])
    end

     def building_params
      params.require(:building).permit(:name, :address,:city_id, {characteristic_ids: []}, characteristics_attributes: [:id, :name])
 
      
    end

    def consultar_caracteristicas
      @characteristics = Characteristic.all
    end
    
     def set_cities
      @cities = City.all
     end

end
