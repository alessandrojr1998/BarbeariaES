require 'test_helper'

class BarbeariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @barbearium = barbearia(:one)
  end

  test "should get index" do
    get barbearia_url
    assert_response :success
  end

  test "should get new" do
    get new_barbearium_url
    assert_response :success
  end

  test "should create barbearium" do
    assert_difference('Barbearium.count') do
      post barbearia_url, params: { barbearium: { contato: @barbearium.contato,
                                                  endereco_id: @barbearium.endereco_id,
                                                  nome: @barbearium.nome,
                                                  usuario_id: @barbearium.usuario_id } }
    end

    assert_redirected_to barbearium_url(Barbearium.last)
  end

  test "should show barbearium" do
    get barbearium_url(@barbearium)
    assert_response :success
  end

  test "should get edit" do
    get edit_barbearium_url(@barbearium)
    assert_response :success
  end

  test "should update barbearium" do
    patch barbearium_url(@barbearium), params: { barbearium: { contato: @barbearium.contato,
                                                               endereco_id: @barbearium.endereco_id,
                                                               nome: @barbearium.nome,
                                                               usuario_id: @barbearium.usuario_id } }
    assert_redirected_to barbearium_url(@barbearium)
  end

  test "should destroy barbearium" do
    assert_difference('Barbearium.count', -1) do
      delete barbearium_url(@barbearium)
    end

    assert_redirected_to barbearia_url
  end
end
