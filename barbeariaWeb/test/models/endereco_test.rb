require 'test_helper'

class EnderecoTest < ActiveSupport::TestCase
    test "Criando novo endereco" do
      ende = Endereco.new(rua:"gabriel", bairro:"teste", numero:"1", barbearium_id: 1)
      assert ende.save
    end
end
