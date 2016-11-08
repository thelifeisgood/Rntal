class GarantLocatairesController < ApplicationController
  before_action :set_garant_locataire, only: [:show, :edit, :update, :destroy]

  # GET /garant_locataires
  # GET /garant_locataires.json
  def index
    @garant_locataires = GarantLocataire.all
  end

  # GET /garant_locataires/1
  # GET /garant_locataires/1.json
  def show
  end

  # GET /garant_locataires/new
  def new
    @garant_locataire = GarantLocataire.new
  end

  # GET /garant_locataires/1/edit
  def edit
  end

  # POST /garant_locataires
  # POST /garant_locataires.json
  def create
    @garant_locataire = GarantLocataire.new(garant_locataire_params)

    respond_to do |format|
      if @garant_locataire.save
        format.html { redirect_to @garant_locataire, notice: 'Garant locataire was successfully created.' }
        format.json { render :show, status: :created, location: @garant_locataire }
      else
        format.html { render :new }
        format.json { render json: @garant_locataire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garant_locataires/1
  # PATCH/PUT /garant_locataires/1.json
  def update
    respond_to do |format|
      if @garant_locataire.update(garant_locataire_params)
        format.html { redirect_to @garant_locataire, notice: 'Garant locataire was successfully updated.' }
        format.json { render :show, status: :ok, location: @garant_locataire }
      else
        format.html { render :edit }
        format.json { render json: @garant_locataire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garant_locataires/1
  # DELETE /garant_locataires/1.json
  def destroy
    @garant_locataire.destroy
    respond_to do |format|
      format.html { redirect_to garant_locataires_url, notice: 'Garant locataire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garant_locataire
      @garant_locataire = GarantLocataire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garant_locataire_params
      params.require(:garant_locataire).permit(:civilite, :nom, :prenom, :adresse, :codePostal, :ville, :locataire_id)
    end
end
