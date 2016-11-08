class BiensController < ApplicationController
  before_action :set_bien, only: [:show, :edit, :update, :destroy]

  # GET /biens
  # GET /biens.json
  def index
    @biens = Bien.all
  end

  # GET /biens/1
  # GET /biens/1.json
  def show
  end

  # GET /biens/new
  def new
    @bien = Bien.new
  end

  # GET /biens/1/edit
  def edit
  end

  # POST /biens
  # POST /biens.json
  def create
    @bien = Bien.new(bien_params)

    respond_to do |format|
      if @bien.save
        format.html { redirect_to @bien, notice: 'Bien was successfully created.' }
        format.json { render :show, status: :created, location: @bien }
      else
        format.html { render :new }
        format.json { render json: @bien.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biens/1
  # PATCH/PUT /biens/1.json
  def update
    respond_to do |format|
      if @bien.update(bien_params)
        format.html { redirect_to @bien, notice: 'Bien was successfully updated.' }
        format.json { render :show, status: :ok, location: @bien }
      else
        format.html { render :edit }
        format.json { render json: @bien.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biens/1
  # DELETE /biens/1.json
  def destroy
    @bien.destroy
    respond_to do |format|
      format.html { redirect_to biens_url, notice: 'Bien was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bien
      @bien = Bien.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bien_params
      params.require(:bien).permit(:typeDeBien, :regimeJuridique, :nombreDePieces, :adresse, :codePostal, :ville, :surfaceHabitable, :descriptionDuBien, :bailleur_id)
    end
end
