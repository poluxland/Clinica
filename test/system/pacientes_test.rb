require "application_system_test_case"

class PacientesTest < ApplicationSystemTestCase
  setup do
    @paciente = pacientes(:one)
  end

  test "visiting the index" do
    visit pacientes_url
    assert_selector "h1", text: "Pacientes"
  end

  test "should create paciente" do
    visit pacientes_url
    click_on "New paciente"

    fill_in "Acv", with: @paciente.acv
    fill_in "Alcohol", with: @paciente.alcohol
    fill_in "Audicion", with: @paciente.audicion
    fill_in "Cardiopatias", with: @paciente.cardiopatias
    fill_in "Cirugias", with: @paciente.cirugias
    fill_in "Cond nutricional", with: @paciente.cond_nutricional
    fill_in "Control consultorio", with: @paciente.control_consultorio
    fill_in "Diabetes", with: @paciente.diabetes
    fill_in "Diagnostico medico", with: @paciente.diagnostico_medico
    fill_in "Direccion", with: @paciente.direccion
    fill_in "Dosis", with: @paciente.dosis
    fill_in "Drogas", with: @paciente.drogas
    fill_in "E civil", with: @paciente.e_civil
    fill_in "Edad", with: @paciente.edad
    fill_in "Enf respiratorias", with: @paciente.enf_respiratorias
    fill_in "Escolaridad", with: @paciente.escolaridad
    fill_in "Farmaco dependencia", with: @paciente.farmaco_dependencia
    fill_in "Fecha diagnostico", with: @paciente.fecha_diagnostico
    fill_in "Fecha evaluacion", with: @paciente.fecha_evaluacion
    fill_in "Fecha nacimiento", with: @paciente.fecha_nacimiento
    fill_in "Hipo hipertiroidismo", with: @paciente.hipo_hipertiroidismo
    fill_in "Hospitalizaciones", with: @paciente.hospitalizaciones
    fill_in "Hta", with: @paciente.hta
    fill_in "Lateralidad", with: @paciente.lateralidad
    fill_in "Lengua materna", with: @paciente.lengua_materna
    fill_in "Medicamentos", with: @paciente.medicamentos
    fill_in "N ficha clinica", with: @paciente.n_ficha_clinica
    fill_in "Nacionalidad", with: @paciente.nacionalidad
    fill_in "Nombre acompanante parentesco", with: @paciente.nombre_acompanante_parentesco
    fill_in "Nombre completo", with: @paciente.nombre_completo
    fill_in "Peso", with: @paciente.peso
    fill_in "Profesion oficio", with: @paciente.profesion_oficio
    fill_in "Resumen anamnesis", with: @paciente.resumen_anamnesis
    fill_in "Sexo", with: @paciente.sexo
    fill_in "Tabaquismo", with: @paciente.tabaquismo
    fill_in "Talla", with: @paciente.talla
    fill_in "Tec", with: @paciente.tec
    fill_in "Telefono", with: @paciente.telefono
    fill_in "Tumores neoplasias", with: @paciente.tumores_neoplasias
    fill_in "Uso antidepresivos", with: @paciente.uso_antidepresivos
    fill_in "Vision", with: @paciente.vision
    click_on "Create Paciente"

    assert_text "Paciente was successfully created"
    click_on "Back"
  end

  test "should update Paciente" do
    visit paciente_url(@paciente)
    click_on "Edit this paciente", match: :first

    fill_in "Acv", with: @paciente.acv
    fill_in "Alcohol", with: @paciente.alcohol
    fill_in "Audicion", with: @paciente.audicion
    fill_in "Cardiopatias", with: @paciente.cardiopatias
    fill_in "Cirugias", with: @paciente.cirugias
    fill_in "Cond nutricional", with: @paciente.cond_nutricional
    fill_in "Control consultorio", with: @paciente.control_consultorio
    fill_in "Diabetes", with: @paciente.diabetes
    fill_in "Diagnostico medico", with: @paciente.diagnostico_medico
    fill_in "Direccion", with: @paciente.direccion
    fill_in "Dosis", with: @paciente.dosis
    fill_in "Drogas", with: @paciente.drogas
    fill_in "E civil", with: @paciente.e_civil
    fill_in "Edad", with: @paciente.edad
    fill_in "Enf respiratorias", with: @paciente.enf_respiratorias
    fill_in "Escolaridad", with: @paciente.escolaridad
    fill_in "Farmaco dependencia", with: @paciente.farmaco_dependencia
    fill_in "Fecha diagnostico", with: @paciente.fecha_diagnostico
    fill_in "Fecha evaluacion", with: @paciente.fecha_evaluacion
    fill_in "Fecha nacimiento", with: @paciente.fecha_nacimiento
    fill_in "Hipo hipertiroidismo", with: @paciente.hipo_hipertiroidismo
    fill_in "Hospitalizaciones", with: @paciente.hospitalizaciones
    fill_in "Hta", with: @paciente.hta
    fill_in "Lateralidad", with: @paciente.lateralidad
    fill_in "Lengua materna", with: @paciente.lengua_materna
    fill_in "Medicamentos", with: @paciente.medicamentos
    fill_in "N ficha clinica", with: @paciente.n_ficha_clinica
    fill_in "Nacionalidad", with: @paciente.nacionalidad
    fill_in "Nombre acompanante parentesco", with: @paciente.nombre_acompanante_parentesco
    fill_in "Nombre completo", with: @paciente.nombre_completo
    fill_in "Peso", with: @paciente.peso
    fill_in "Profesion oficio", with: @paciente.profesion_oficio
    fill_in "Resumen anamnesis", with: @paciente.resumen_anamnesis
    fill_in "Sexo", with: @paciente.sexo
    fill_in "Tabaquismo", with: @paciente.tabaquismo
    fill_in "Talla", with: @paciente.talla
    fill_in "Tec", with: @paciente.tec
    fill_in "Telefono", with: @paciente.telefono
    fill_in "Tumores neoplasias", with: @paciente.tumores_neoplasias
    fill_in "Uso antidepresivos", with: @paciente.uso_antidepresivos
    fill_in "Vision", with: @paciente.vision
    click_on "Update Paciente"

    assert_text "Paciente was successfully updated"
    click_on "Back"
  end

  test "should destroy Paciente" do
    visit paciente_url(@paciente)
    click_on "Destroy this paciente", match: :first

    assert_text "Paciente was successfully destroyed"
  end
end
