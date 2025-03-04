class BitacorasController < ApplicationController
  before_action :set_bitacora, only: %i[ show edit update destroy ]

  # GET /bitacoras or /bitacoras.json
  def index
  if current_user
    @bitacoras = Bitacora.where(alumno: current_user.email)
  else
    # Manejo si no hay usuario actualmente autenticado
  end
end

  def bit
    @bitacoras = Bitacora.where(profesor: current_user.email)
  end

  # GET /bitacoras/1 or /bitacoras/1.json
  def show
  end

  # GET /bitacoras/new
  def new
    @bitacora = Bitacora.new
    authorize @bitacora
  end

  # GET /bitacoras/1/edit
  def edit
     authorize @bitacora
  end

  # POST /bitacoras or /bitacoras.json
  def create
    @bitacora = Bitacora.new(bitacora_params)
     authorize @bitacora

    respond_to do |format|
      if @bitacora.save
        format.html { redirect_to bitacora_url(@bitacora), notice: "Bitacora was successfully created." }
        format.json { render :show, status: :created, location: @bitacora }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bitacora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bitacoras/1 or /bitacoras/1.json
  def update
     authorize @bitacora
    respond_to do |format|
      if @bitacora.update(bitacora_params)
        format.html { redirect_to bitacora_url(@bitacora), notice: "Bitacora was successfully updated." }
        format.json { render :show, status: :ok, location: @bitacora }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bitacora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bitacoras/1 or /bitacoras/1.json
  def destroy
    authorize @bitacora
    @bitacora.destroy!


    respond_to do |format|
      format.html { redirect_to bitacoras_url, notice: "Bitacora was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bitacora
      @bitacora = Bitacora.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bitacora_params
      params.require(:bitacora).permit(:numero_semana, :fecha, :alumno, :profesor, :registro, :acuerdos, :alumno2, :profesor2)
    end
end
