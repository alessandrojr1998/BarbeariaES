require 'test_helper'

class ProdutoTest < ActiveSupport::TestCase
  test "Criando Produto" do
    produto = Produto.new(nome:"Secador",descricao:"Secador de cabelos",valor:"12,00",quantidade:"10")
    assert_not produto.save
  end

end
