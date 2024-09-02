class PacientesController < ApplicationController
  before_action :set_paciente, only: %i[ show edit update destroy ]

  # GET /pacientes or /pacientes.json
  def index
    if params[:query].present?
      # Search for the query in apellido_paterno or apellido_materno
      @pacientes = Paciente.where('apellido_paterno LIKE ? OR apellido_materno LIKE ?', "%#{params[:query]}%", "%#{params[:query]}%")
    else
      @pacientes = Paciente.all
    end
  end

  # GET /pacientes/1 or /pacientes/1.json
  def show
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
    authorize @paciente
  end

  # GET /pacientes/1/edit
  def edit
  end

  # POST /pacientes or /pacientes.json
  def create
    @paciente = Paciente.new(paciente_params)
    authorize @paciente

    respond_to do |format|
      if @paciente.save
        format.html { redirect_to pacientes_path, notice: "Paciente creado con exito." }
        format.json { render :show, status: :created, location: @paciente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1 or /pacientes/1.json
  def update
    respond_to do |format|
      if @paciente.update(paciente_params)
        format.html { redirect_to paciente_url(@paciente), notice: "Paciente modificado." }
        format.json { render :show, status: :ok, location: @paciente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1 or /pacientes/1.json
  def destroy
    authorize @paciente
    @paciente.destroy!


    respond_to do |format|
      format.html { redirect_to pacientes_url, notice: "Paciente eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente
      @paciente = Paciente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paciente_params
      params.require(:paciente).permit(:nombre_completo, :fecha_evaluacion, :fecha_diagnostico, :fecha_nacimiento, :edad, :direccion, :telefono, :diagnostico_medico, :escolaridad, :nacionalidad, :e_civil, :profesion_oficio, :lengua_materna, :lateralidad, :nombre_acompanante_parentesco, :n_ficha_clinica, :sexo, :hta, :audicion, :drogas, :farmaco_dependencia, :vision, :cirugias, :tec, :diabetes, :cond_nutricional, :hipo_hipertiroidismo, :acv, :hospitalizaciones, :enf_respiratorias, :tabaquismo, :peso, :cardiopatias, :alcohol, :talla, :tumores_neoplasias, :medicamentos, :dosis, :control_consultorio, :uso_antidepresivos, :resumen_anamnesis, :apellido_materno, :apellido_paterno)
    end
end
