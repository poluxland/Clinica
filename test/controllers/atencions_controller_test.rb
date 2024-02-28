require "test_helper"

class AtencionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atencion = atencions(:one)
  end

  test "should get index" do
    get atencions_url
    assert_response :success
  end

  test "should get new" do
    get new_atencion_url
    assert_response :success
  end

  test "should create atencion" do
    assert_difference("Atencion.count") do
      post atencions_url, params: { atencion: { centro_id: @atencion.centro_id, evolucion: @atencion.evolucion, fecha: @atencion.fecha, paciente_id: @atencion.paciente_id, revision_tutor: @atencion.revision_tutor, tutor: @atencion.tutor, user_id: @atencion.user_id } }
    end

    assert_redirected_to atencion_url(Atencion.last)
  end

  test "should show atencion" do
    get atencion_url(@atencion)
    assert_response :success
  end

  test "should get edit" do
    get edit_atencion_url(@atencion)
    assert_response :success
  end

  test "should update atencion" do
    patch atencion_url(@atencion), params: { atencion: { centro_id: @atencion.centro_id, evolucion: @atencion.evolucion, fecha: @atencion.fecha, paciente_id: @atencion.paciente_id, revision_tutor: @atencion.revision_tutor, tutor: @atencion.tutor, user_id: @atencion.user_id } }
    assert_redirected_to atencion_url(@atencion)
  end

  test "should destroy atencion" do
    assert_difference("Atencion.count", -1) do
      delete atencion_url(@atencion)
    end

    assert_redirected_to atencions_url
  end
end
