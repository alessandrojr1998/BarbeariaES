require 'test_helper'

class ProdutoTest < ActiveSupport::TestCase
  test "Criando Produto" do
    produto = Produto.new(nome: "Secador", descricao: "Secador de cabelos",
                          valor: "12.00", quantidade: "10", barbearium_id: 1)
    assert produto.save
  end

  test "Criando Produto sem nome " do
    produto = Produto.new(nome: "", descricao: "Secador de cabelos",
                          valor: "12.00", quantidade: "10", barbearium_id: 1)
    assert_not produto.save
  end

  test "Criando Produto sem preco " do
    produto = Produto.new(nome: "Teste", descricao: "Secador de cabelos",
                          valor: "", quantidade: "10", barbearium_id: 1)
    assert_not produto.save
  end
end
