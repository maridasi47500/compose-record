class MusicsymboltypesController < ApplicationController
  before_action :set_musicsymboltype, only: %i[ show edit update destroy ]

  # GET /musicsymboltypes or /musicsymboltypes.json
  def index
    @musicsymboltypes = Musicsymboltype.all
  end

  # GET /musicsymboltypes/1 or /musicsymboltypes/1.json
  def show
  end

  # GET /musicsymboltypes/new
  def new
    @musicsymboltype = Musicsymboltype.new
  end

  # GET /musicsymboltypes/1/edit
  def edit
  end

  # POST /musicsymboltypes or /musicsymboltypes.json
  def create
    @musicsymboltype = Musicsymboltype.new(musicsymboltype_params)

    respond_to do |format|
      if @musicsymboltype.save
        format.html { redirect_to @musicsymboltype, notice: "Musicsymboltype was successfully created." }
        format.json { render :show, status: :created, location: @musicsymboltype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musicsymboltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicsymboltypes/1 or /musicsymboltypes/1.json
  def update
    respond_to do |format|
      if @musicsymboltype.update(musicsymboltype_params)
        format.html { redirect_to @musicsymboltype, notice: "Musicsymboltype was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @musicsymboltype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musicsymboltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicsymboltypes/1 or /musicsymboltypes/1.json
  def destroy
    @musicsymboltype.destroy!

    respond_to do |format|
      format.html { redirect_to musicsymboltypes_path, notice: "Musicsymboltype was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musicsymboltype
      @musicsymboltype = Musicsymboltype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def musicsymboltype_params
      params.require(:musicsymboltype).permit(:name)
    end
end
