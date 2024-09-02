class AtencionsController < ApplicationController
  before_action :set_atencion, only: %i[ show edit update destroy ]

  # GET /atencions or /atencions.json
  def index
    if params[:query].present?
      query = "%#{params[:query].downcase}%"
      @atencions = Atencion.joins(:paciente)
                           .where('LOWER(pacientes.apellido_paterno) LIKE ? OR LOWER(pacientes.apellido_materno) LIKE ?', query, query)
    else
      @atencions = Atencion.all
    end
  end

def revision
  @atencions = Atencion.where(tutor: current_user.email)
end


  # GET /atencions/1 or /atencions/1.json
  def show
  end

  # GET /atencions/new
  def new
    @atencion = Atencion.new
    authorize @atencion

  end

  # GET /atencions/1/edit
  def edit
  end

  # POST /atencions or /atencions.json
  def create
    @atencion = Atencion.new(atencion_params)
    authorize @atencion


    respond_to do |format|
      if @atencion.save
        format.html { redirect_to atencions_path, notice: "Atencion creada." }
        format.json { render :show, status: :created, location: @atencion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @atencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atencions/1 or /atencions/1.json
  def update
    respond_to do |format|
      if @atencion.update(atencion_params)
        format.html { redirect_to atencion_url(@atencion), notice: "Atencion modificada." }
        format.json { render :show, status: :ok, location: @atencion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @atencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atencions/1 or /atencions/1.json
  def destroy
    authorize @atencion
    @atencion.destroy!


    respond_to do |format|
      format.html { redirect_to atencions_url, notice: "Atencion eliminada." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atencion
      @atencion = Atencion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atencion_params
      params.require(:atencion).permit(:paciente_id, :centro_id, :user_id, :fecha, :tutor, :evolucion, :revision_tutor)
    end
end
