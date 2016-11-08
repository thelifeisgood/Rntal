class RepresentantBailleursController < ApplicationController
  before_action :set_representant_bailleur, only: [:show, :edit, :update, :destroy]

  # GET /representant_bailleurs
  # GET /representant_bailleurs.json
  def index
    @representant_bailleurs = RepresentantBailleur.all
  end

  # GET /representant_bailleurs/1
  # GET /representant_bailleurs/1.json
  def show
  end

  # GET /representant_bailleurs/new
  def new
    @representant_bailleur = RepresentantBailleur.new
  end

  # GET /representant_bailleurs/1/edit
  def edit
  end

  # POST /representant_bailleurs
  # POST /representant_bailleurs.json
  def create
    @representant_bailleur = RepresentantBailleur.new(representant_bailleur_params)

    respond_to do |format|
      if @representant_bailleur.save
        format.html { redirect_to @representant_bailleur, notice: 'Representant bailleur was successfully created.' }
        format.json { render :show, status: :created, location: @representant_bailleur }
      else
        format.html { render :new }
        format.json { render json: @representant_bailleur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /representant_bailleurs/1
  # PATCH/PUT /representant_bailleurs/1.json
  def update
    respond_to do |format|
      if @representant_bailleur.update(representant_bailleur_params)
        format.html { redirect_to @representant_bailleur, notice: 'Representant bailleur was successfully updated.' }
        format.json { render :show, status: :ok, location: @representant_bailleur }
      else
        format.html { render :edit }
        format.json { render json: @representant_bailleur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representant_bailleurs/1
  # DELETE /representant_bailleurs/1.json
  def destroy
    @representant_bailleur.destroy
    respond_to do |format|
      format.html { redirect_to representant_bailleurs_url, notice: 'Representant bailleur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_representant_bailleur
      @representant_bailleur = RepresentantBailleur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def representant_bailleur_params
      params.require(:representant_bailleur).permit(:civilite, :nom, :prenom, :adresse, :codePostal, :ville, :bailleur_id)
    end
end
