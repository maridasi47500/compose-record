class MusicaltechniquesController < ApplicationController
  before_action :set_musicaltechnique, only: %i[ show edit update destroy ]

  # GET /musicaltechniques or /musicaltechniques.json
  def index
    @musicaltechniques = Musicaltechnique.all
  end

  # GET /musicaltechniques/1 or /musicaltechniques/1.json
  def show
  end

  # GET /musicaltechniques/new
  def new
    @musicaltechnique = Musicaltechnique.new
  end

  # GET /musicaltechniques/1/edit
  def edit
  end

  # POST /musicaltechniques or /musicaltechniques.json
  def create
    @musicaltechnique = Musicaltechnique.new(musicaltechnique_params)

    respond_to do |format|
      if @musicaltechnique.save
        format.html { redirect_to @musicaltechnique, notice: "Musicaltechnique was successfully created." }
        format.json { render :show, status: :created, location: @musicaltechnique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musicaltechnique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicaltechniques/1 or /musicaltechniques/1.json
  def update
    respond_to do |format|
      if @musicaltechnique.update(musicaltechnique_params)
        format.html { redirect_to @musicaltechnique, notice: "Musicaltechnique was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @musicaltechnique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musicaltechnique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicaltechniques/1 or /musicaltechniques/1.json
  def destroy
    @musicaltechnique.destroy!

    respond_to do |format|
      format.html { redirect_to musicaltechniques_path, notice: "Musicaltechnique was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musicaltechnique
      @musicaltechnique = Musicaltechnique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def musicaltechnique_params
      params.require(:musicaltechnique).permit(:name, :musicalinstrument_id, :myattribute, :maxvalue, :minvalue)
    end
end
