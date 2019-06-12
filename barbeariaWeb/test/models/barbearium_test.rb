require 'test_helper'

class BarbeariumTest < ActiveSupport::TestCase
  test "Criando Barbearia sem usuario" do
    barb = Barbearium.new(nome: 'Teste', contato: '123456789', endereco_id: 1)
    assert_not barb.save
  end
end
