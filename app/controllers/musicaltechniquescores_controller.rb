class MusicaltechniquescoresController < ApplicationController
  before_action :set_musicaltechniquescore, only: %i[ show edit update destroy ]

  # GET /musicaltechniquescores or /musicaltechniquescores.json
  def index
    @musicaltechniquescores = Musicaltechniquescore.all
  end

  # GET /musicaltechniquescores/1 or /musicaltechniquescores/1.json
  def show
  end

  # GET /musicaltechniquescores/new
  def new
    @musicaltechniquescore = Musicaltechniquescore.new
  end

  # GET /musicaltechniquescores/1/edit
  def edit
  end

  # POST /musicaltechniquescores or /musicaltechniquescores.json
  def create
    @musicaltechniquescore = Musicaltechniquescore.new(musicaltechniquescore_params)

    respond_to do |format|
      if @musicaltechniquescore.save
        format.html { redirect_to @musicaltechniquescore, notice: "Musicaltechniquescore was successfully created." }
        format.json { render :show, status: :created, location: @musicaltechniquescore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musicaltechniquescore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicaltechniquescores/1 or /musicaltechniquescores/1.json
  def update
    respond_to do |format|
      if @musicaltechniquescore.update(musicaltechniquescore_params)
        format.html { redirect_to @musicaltechniquescore, notice: "Musicaltechniquescore was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @musicaltechniquescore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musicaltechniquescore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicaltechniquescores/1 or /musicaltechniquescores/1.json
  def destroy
    @musicaltechniquescore.destroy!

    respond_to do |format|
      format.html { redirect_to musicaltechniquescores_path, notice: "Musicaltechniquescore was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musicaltechniquescore
      @musicaltechniquescore = Musicaltechniquescore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def musicaltechniquescore_params
      params.require(:musicaltechniquescore).permit(:thismomentvalue, :score_id, :musicaltechnique_id, :myvalue, :mypercent)
    end
end
