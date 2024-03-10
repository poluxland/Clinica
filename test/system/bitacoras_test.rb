require "application_system_test_case"

class BitacorasTest < ApplicationSystemTestCase
  setup do
    @bitacora = bitacoras(:one)
  end

  test "visiting the index" do
    visit bitacoras_url
    assert_selector "h1", text: "Bitacoras"
  end

  test "should create bitacora" do
    visit bitacoras_url
    click_on "New bitacora"

    fill_in "Acuerdos", with: @bitacora.acuerdos
    fill_in "Alumno", with: @bitacora.alumno
    fill_in "Fecha", with: @bitacora.fecha
    fill_in "Numero semana", with: @bitacora.numero_semana
    fill_in "Profesor", with: @bitacora.profesor
    fill_in "Registro", with: @bitacora.registro
    click_on "Create Bitacora"

    assert_text "Bitacora was successfully created"
    click_on "Back"
  end

  test "should update Bitacora" do
    visit bitacora_url(@bitacora)
    click_on "Edit this bitacora", match: :first

    fill_in "Acuerdos", with: @bitacora.acuerdos
    fill_in "Alumno", with: @bitacora.alumno
    fill_in "Fecha", with: @bitacora.fecha
    fill_in "Numero semana", with: @bitacora.numero_semana
    fill_in "Profesor", with: @bitacora.profesor
    fill_in "Registro", with: @bitacora.registro
    click_on "Update Bitacora"

    assert_text "Bitacora was successfully updated"
    click_on "Back"
  end

  test "should destroy Bitacora" do
    visit bitacora_url(@bitacora)
    click_on "Destroy this bitacora", match: :first

    assert_text "Bitacora was successfully destroyed"
  end
end
