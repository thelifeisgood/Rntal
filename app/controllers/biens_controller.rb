class BiensController < ApplicationController
  before_action :set_bien, only: [:show, :edit, :update, :destroy]

  def index
   @biens = Bien.all
  end

  def show
  end

  def new
   @bien = Bien.new
  end

  def edit
  end

  def create
    @bien = @bailleur.biens.new(params[:id])

    respond_to do |format|
      if @bien.save
        format.html { redirect_to [@bien], notice: 'Bien was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
       if @bien.update_attributes(params[:id])
        format.html { redirect_to [@bailleur, @bien], notice: 'Bien was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @bien.destroy
    respond_to do |format|
      format.html { redirect_to bailleur_biens_path(@bailleur), notice: 'Bien was successfully destroyed.'  }
    end
  end

  private


    def set_bien
      @bien = @bailleur.biens.find(params[:id])
      @bails = @bien.bails
    end

    def bien_params
      params.require(:bien).permit(:typeDeBien, :regimeJuridique, :nombreDePieces, :adresse, :codePostal, :ville, :surfaceHabitable, :descriptionDuBien, :bailleur_id)
    end
end
