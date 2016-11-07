class BailleursController < ApplicationController
  before_action :set_bailleur, only: [:show, :edit, :update, :destroy]

  # GET /bailleurs
  # GET /bailleurs.json
  def index
    @bailleurs = Bailleur.all
  end

  # GET /bailleurs/1
  # GET /bailleurs/1.json
  def show
  end

  # GET /bailleurs/new
  def new
    @bailleur = Bailleur.new
  end

  # GET /bailleurs/1/edit
  def edit
  end

  # POST /bailleurs
  # POST /bailleurs.json
  def create
    @bailleur = Bailleur.new(bailleur_params)

    respond_to do |format|
      if @bailleur.save
        format.html { redirect_to @bailleur, notice: 'Bailleur was successfully created.' }
        format.json { render :show, status: :created, location: @bailleur }
      else
        format.html { render :new }
        format.json { render json: @bailleur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bailleurs/1
  # PATCH/PUT /bailleurs/1.json
  def update
    respond_to do |format|
      if @bailleur.update(bailleur_params)
        format.html { redirect_to @bailleur, notice: 'Bailleur was successfully updated.' }
        format.json { render :show, status: :ok, location: @bailleur }
      else
        format.html { render :edit }
        format.json { render json: @bailleur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bailleurs/1
  # DELETE /bailleurs/1.json
  def destroy
    @bailleur.destroy
    respond_to do |format|
      format.html { redirect_to bailleurs_url, notice: 'Bailleur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bailleur
      @bailleur = Bailleur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bailleur_params
      params.require(:bailleur).permit(:civilite, :nom, :prenom, :nomMme, :prenomMme, :nomDeux, :prenomDeux, :nomSociete, :nRcs, :tva, :nomIndivision, :adresse, :codePostal, :ville, :representant, :user_id)
    end
end
