class LocatairesController < ApplicationController
  before_action :set_locataire, only: [:show, :edit, :update, :destroy]

  # GET /locataires
  # GET /locataires.json
  def index
    @locataires = current_user.locataire
  end

  # GET /locataires/1
  # GET /locataires/1.json
  def show
  end

  # GET /locataires/new
  def new
    @locataire = current_user.locataire.build
  end

  # GET /locataires/1/edit
  def edit
  end

  # POST /locataires
  # POST /locataires.json
  def create
    @locataire = current_user.locataire.build(bailleur_params)

    respond_to do |format|
      if @locataire.save
        format.html { redirect_to @locataire, notice: 'Locataire was successfully created.' }
        format.json { render :show, status: :created, location: @locataire }
      else
        format.html { render :new }
        format.json { render json: @locataire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locataires/1
  # PATCH/PUT /locataires/1.json
  def update
    respond_to do |format|
      if @locataire.update(locataire_params)
        format.html { redirect_to @locataire, notice: 'Locataire was successfully updated.' }
        format.json { render :show, status: :ok, location: @locataire }
      else
        format.html { render :edit }
        format.json { render json: @locataire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locataires/1
  # DELETE /locataires/1.json
  def destroy
    @locataire.destroy
    respond_to do |format|
      format.html { redirect_to locataires_url, notice: 'Locataire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locataire
      @locataire = Locataire.find(params[:id])
      @bails = @locataire.bails
      @representant_locataires = @locataire.representant_locataires
      @garant_locataires = @locataire.garant_locataires
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locataire_params
      params.require(:locataire).permit(:civilite, :nom, :prenom, :nomDeux, :prenomDeux, :nomSociete, :nRcs, :adresseSiege, :codePostalSiege, :villeSiege, :representant, :user_id)
    end
end
