require "application_system_test_case"

class AtencionsTest < ApplicationSystemTestCase
  setup do
    @atencion = atencions(:one)
  end

  test "visiting the index" do
    visit atencions_url
    assert_selector "h1", text: "Atencions"
  end

  test "should create atencion" do
    visit atencions_url
    click_on "New atencion"

    fill_in "Centro", with: @atencion.centro_id
    fill_in "Evolucion", with: @atencion.evolucion
    fill_in "Fecha", with: @atencion.fecha
    fill_in "Paciente", with: @atencion.paciente_id
    fill_in "Revision tutor", with: @atencion.revision_tutor
    fill_in "Tutor", with: @atencion.tutor
    fill_in "User", with: @atencion.user_id
    click_on "Create Atencion"

    assert_text "Atencion was successfully created"
    click_on "Back"
  end

  test "should update Atencion" do
    visit atencion_url(@atencion)
    click_on "Edit this atencion", match: :first

    fill_in "Centro", with: @atencion.centro_id
    fill_in "Evolucion", with: @atencion.evolucion
    fill_in "Fecha", with: @atencion.fecha
    fill_in "Paciente", with: @atencion.paciente_id
    fill_in "Revision tutor", with: @atencion.revision_tutor
    fill_in "Tutor", with: @atencion.tutor
    fill_in "User", with: @atencion.user_id
    click_on "Update Atencion"

    assert_text "Atencion was successfully updated"
    click_on "Back"
  end

  test "should destroy Atencion" do
    visit atencion_url(@atencion)
    click_on "Destroy this atencion", match: :first

    assert_text "Atencion was successfully destroyed"
  end
end
