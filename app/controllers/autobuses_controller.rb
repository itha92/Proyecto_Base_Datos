class AutobusesController < ApplicationController
  before_action :set_autobus, only: [:show, :edit, :update, :destroy]

  # GET /autobuses
  # GET /autobuses.json
  def index
    @autobuses = Autobus.all
  end

  # GET /autobuses/1
  # GET /autobuses/1.json
  def show
  end

  # GET /autobuses/new
  def new
    @autobus = Autobus.new
  end

  # GET /autobuses/1/edit
  def edit
  end

  # POST /autobuses
  # POST /autobuses.json
  def create
    @autobus = Autobus.new(autobus_params)

    respond_to do |format|
      if @autobus.save
        format.html { redirect_to @autobus, notice: 'Autobus was successfully created.' }
        format.json { render action: 'show', status: :created, location: @autobus }
      else
        format.html { render action: 'new' }
        format.json { render json: @autobus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autobuses/1
  # PATCH/PUT /autobuses/1.json
  def update
    respond_to do |format|
      if @autobus.update(autobus_params)
        format.html { redirect_to @autobus, notice: 'Autobus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @autobus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autobuses/1
  # DELETE /autobuses/1.json
  def destroy
    @autobus.destroy
    respond_to do |format|
      format.html { redirect_to autobuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autobus
      @autobus = Autobus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autobus_params
      params.require(:autobus).permit(:marca, :modelo, :capacidad, :is_active)
    end
end
