class MusicsymbolsController < ApplicationController
  before_action :set_musicsymbol, only: %i[ show edit update destroy ]

  # GET /musicsymbols or /musicsymbols.json
  def index
    @musicsymbols = Musicsymbol.all
  end

  # GET /musicsymbols/1 or /musicsymbols/1.json
  def show
  end

  # GET /musicsymbols/new
  def new
    @musicsymbol = Musicsymbol.new
  end

  # GET /musicsymbols/1/edit
  def edit
  end

  # POST /musicsymbols or /musicsymbols.json
  def create
    @musicsymbol = Musicsymbol.new(musicsymbol_params)

    respond_to do |format|
      if @musicsymbol.save
        format.html { redirect_to @musicsymbol, notice: "Musicsymbol was successfully created." }
        format.json { render :show, status: :created, location: @musicsymbol }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musicsymbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicsymbols/1 or /musicsymbols/1.json
  def update
    respond_to do |format|
      if @musicsymbol.update(musicsymbol_params)
        format.html { redirect_to @musicsymbol, notice: "Musicsymbol was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @musicsymbol }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musicsymbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicsymbols/1 or /musicsymbols/1.json
  def destroy
    @musicsymbol.destroy!

    respond_to do |format|
      format.html { redirect_to musicsymbols_path, notice: "Musicsymbol was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musicsymbol
      @musicsymbol = Musicsymbol.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def musicsymbol_params
      params.require(:musicsymbol).permit(:musicsymboltype_id, :name)
    end
end
