class RepresentantLocatairesController < ApplicationController
  before_action :set_representant_locataire, only: [:show, :edit, :update, :destroy]

  # GET /representant_locataires
  # GET /representant_locataires.json
  def index
    @representant_locataires = RepresentantLocataire.all
  end

  # GET /representant_locataires/1
  # GET /representant_locataires/1.json
  def show
  end

  # GET /representant_locataires/new
  def new
    @representant_locataire = RepresentantLocataire.new
  end

  # GET /representant_locataires/1/edit
  def edit
  end

  # POST /representant_locataires
  # POST /representant_locataires.json
  def create
    @representant_locataire = RepresentantLocataire.new(representant_locataire_params)

    respond_to do |format|
      if @representant_locataire.save
        format.html { redirect_to @representant_locataire, notice: 'Representant locataire was successfully created.' }
        format.json { render :show, status: :created, location: @representant_locataire }
      else
        format.html { render :new }
        format.json { render json: @representant_locataire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /representant_locataires/1
  # PATCH/PUT /representant_locataires/1.json
  def update
    respond_to do |format|
      if @representant_locataire.update(representant_locataire_params)
        format.html { redirect_to @representant_locataire, notice: 'Representant locataire was successfully updated.' }
        format.json { render :show, status: :ok, location: @representant_locataire }
      else
        format.html { render :edit }
        format.json { render json: @representant_locataire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representant_locataires/1
  # DELETE /representant_locataires/1.json
  def destroy
    @representant_locataire.destroy
    respond_to do |format|
      format.html { redirect_to representant_locataires_url, notice: 'Representant locataire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_representant_locataire
      @representant_locataire = RepresentantLocataire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def representant_locataire_params
      params.require(:representant_locataire).permit(:civilite, :nom, :prenom, :adresse, :codePostal, :ville, :locataire_id)
    end
end
