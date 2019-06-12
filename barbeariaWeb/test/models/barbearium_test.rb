require 'test_helper'

class BarbeariumTest < ActiveSupport::TestCase
  test "Criando Barbearia sem usuario" do
    barb = Barbearium.new(nome: 'Teste', contato: '123456789', endereco_id: 1)
    assert_not barb.save
  end

  test "Criando Barbearia sem nome" do
    barb = Barbearium.new(nome: ' ', contato: '123456789', endereco_id: 1)
    assert_not barb.save
  end

  test "Criando Barbearia sem contato" do
    barb = Barbearium.new(nome: ' TEste', contato: ' ', endereco_id: 1)
    assert_not barb.save
  end
end
