require "test_helper"

class PacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente = pacientes(:one)
  end

  test "should get index" do
    get pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_url
    assert_response :success
  end

  test "should create paciente" do
    assert_difference("Paciente.count") do
      post pacientes_url, params: { paciente: { acv: @paciente.acv, alcohol: @paciente.alcohol, audicion: @paciente.audicion, cardiopatias: @paciente.cardiopatias, cirugias: @paciente.cirugias, cond_nutricional: @paciente.cond_nutricional, control_consultorio: @paciente.control_consultorio, diabetes: @paciente.diabetes, diagnostico_medico: @paciente.diagnostico_medico, direccion: @paciente.direccion, dosis: @paciente.dosis, drogas: @paciente.drogas, e_civil: @paciente.e_civil, edad: @paciente.edad, enf_respiratorias: @paciente.enf_respiratorias, escolaridad: @paciente.escolaridad, farmaco_dependencia: @paciente.farmaco_dependencia, fecha_diagnostico: @paciente.fecha_diagnostico, fecha_evaluacion: @paciente.fecha_evaluacion, fecha_nacimiento: @paciente.fecha_nacimiento, hipo_hipertiroidismo: @paciente.hipo_hipertiroidismo, hospitalizaciones: @paciente.hospitalizaciones, hta: @paciente.hta, lateralidad: @paciente.lateralidad, lengua_materna: @paciente.lengua_materna, medicamentos: @paciente.medicamentos, n_ficha_clinica: @paciente.n_ficha_clinica, nacionalidad: @paciente.nacionalidad, nombre_acompanante_parentesco: @paciente.nombre_acompanante_parentesco, nombre_completo: @paciente.nombre_completo, peso: @paciente.peso, profesion_oficio: @paciente.profesion_oficio, resumen_anamnesis: @paciente.resumen_anamnesis, sexo: @paciente.sexo, tabaquismo: @paciente.tabaquismo, talla: @paciente.talla, tec: @paciente.tec, telefono: @paciente.telefono, tumores_neoplasias: @paciente.tumores_neoplasias, uso_antidepresivos: @paciente.uso_antidepresivos, vision: @paciente.vision } }
    end

    assert_redirected_to paciente_url(Paciente.last)
  end

  test "should show paciente" do
    get paciente_url(@paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_url(@paciente)
    assert_response :success
  end

  test "should update paciente" do
    patch paciente_url(@paciente), params: { paciente: { acv: @paciente.acv, alcohol: @paciente.alcohol, audicion: @paciente.audicion, cardiopatias: @paciente.cardiopatias, cirugias: @paciente.cirugias, cond_nutricional: @paciente.cond_nutricional, control_consultorio: @paciente.control_consultorio, diabetes: @paciente.diabetes, diagnostico_medico: @paciente.diagnostico_medico, direccion: @paciente.direccion, dosis: @paciente.dosis, drogas: @paciente.drogas, e_civil: @paciente.e_civil, edad: @paciente.edad, enf_respiratorias: @paciente.enf_respiratorias, escolaridad: @paciente.escolaridad, farmaco_dependencia: @paciente.farmaco_dependencia, fecha_diagnostico: @paciente.fecha_diagnostico, fecha_evaluacion: @paciente.fecha_evaluacion, fecha_nacimiento: @paciente.fecha_nacimiento, hipo_hipertiroidismo: @paciente.hipo_hipertiroidismo, hospitalizaciones: @paciente.hospitalizaciones, hta: @paciente.hta, lateralidad: @paciente.lateralidad, lengua_materna: @paciente.lengua_materna, medicamentos: @paciente.medicamentos, n_ficha_clinica: @paciente.n_ficha_clinica, nacionalidad: @paciente.nacionalidad, nombre_acompanante_parentesco: @paciente.nombre_acompanante_parentesco, nombre_completo: @paciente.nombre_completo, peso: @paciente.peso, profesion_oficio: @paciente.profesion_oficio, resumen_anamnesis: @paciente.resumen_anamnesis, sexo: @paciente.sexo, tabaquismo: @paciente.tabaquismo, talla: @paciente.talla, tec: @paciente.tec, telefono: @paciente.telefono, tumores_neoplasias: @paciente.tumores_neoplasias, uso_antidepresivos: @paciente.uso_antidepresivos, vision: @paciente.vision } }
    assert_redirected_to paciente_url(@paciente)
  end

  test "should destroy paciente" do
    assert_difference("Paciente.count", -1) do
      delete paciente_url(@paciente)
    end

    assert_redirected_to pacientes_url
  end
end
