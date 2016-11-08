class BailsController < ApplicationController
  before_action :set_bail, only: [:show, :edit, :update, :destroy]

  # GET /bails
  # GET /bails.json
  def index
    @bails = Bail.all
  end

  # GET /bails/1
  # GET /bails/1.json
  def show
  end

  # GET /bails/new
  def new
    @bail = Bail.new
  end

  # GET /bails/1/edit
  def edit
  end

  # POST /bails
  # POST /bails.json
  def create
    @bail = Bail.new(bail_params)

    respond_to do |format|
      if @bail.save
        format.html { redirect_to @bail, notice: 'Bail was successfully created.' }
        format.json { render :show, status: :created, location: @bail }
      else
        format.html { render :new }
        format.json { render json: @bail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bails/1
  # PATCH/PUT /bails/1.json
  def update
    respond_to do |format|
      if @bail.update(bail_params)
        format.html { redirect_to @bail, notice: 'Bail was successfully updated.' }
        format.json { render :show, status: :ok, location: @bail }
      else
        format.html { render :edit }
        format.json { render json: @bail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bails/1
  # DELETE /bails/1.json
  def destroy
    @bail.destroy
    respond_to do |format|
      format.html { redirect_to bails_url, notice: 'Bail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bail
      @bail = Bail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bail_params
      params.require(:bail).permit(:typeDeBail, :dureeDuBail, :dateDebutBail, :dateFinBail, :destinationDesLocaux, :loyerHorsCharges, :provisionCharges, :modaliteReglementChargesRecuperables, :revisionAutomatiqueDuLoyer, :jourExigibiliteLoyer, :modeReglement, :enregistrementAutomatiqueLoyer, :assuranceColocation, :locataire_id, :bien_id)
    end
end
