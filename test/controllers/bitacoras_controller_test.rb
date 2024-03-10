require "test_helper"

class BitacorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bitacora = bitacoras(:one)
  end

  test "should get index" do
    get bitacoras_url
    assert_response :success
  end

  test "should get new" do
    get new_bitacora_url
    assert_response :success
  end

  test "should create bitacora" do
    assert_difference("Bitacora.count") do
      post bitacoras_url, params: { bitacora: { acuerdos: @bitacora.acuerdos, alumno: @bitacora.alumno, fecha: @bitacora.fecha, numero_semana: @bitacora.numero_semana, profesor: @bitacora.profesor, registro: @bitacora.registro } }
    end

    assert_redirected_to bitacora_url(Bitacora.last)
  end

  test "should show bitacora" do
    get bitacora_url(@bitacora)
    assert_response :success
  end

  test "should get edit" do
    get edit_bitacora_url(@bitacora)
    assert_response :success
  end

  test "should update bitacora" do
    patch bitacora_url(@bitacora), params: { bitacora: { acuerdos: @bitacora.acuerdos, alumno: @bitacora.alumno, fecha: @bitacora.fecha, numero_semana: @bitacora.numero_semana, profesor: @bitacora.profesor, registro: @bitacora.registro } }
    assert_redirected_to bitacora_url(@bitacora)
  end

  test "should destroy bitacora" do
    assert_difference("Bitacora.count", -1) do
      delete bitacora_url(@bitacora)
    end

    assert_redirected_to bitacoras_url
  end
end
