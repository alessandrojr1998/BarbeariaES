require 'test_helper'

class EnderecoTest < ActiveSupport::TestCase
    test "Criando novo endereco" do
      ende = Endereco.new(rua:"gabriel", bairro:"teste", numero:"1", barbearium_id: 1)
      assert ende.save
    end

    test "Criando novo endereco sem rua " do
      ende = Endereco.new(rua:"", bairro:"teste", numero:"1", barbearium_id: 1)
      assert_not ende.save
    end


    test "Criando novo endereco sem bairro " do
      ende = Endereco.new(rua:"Teste", bairro:"", numero:"1", barbearium_id: 1)
      assert_not  ende.save
    end
end
