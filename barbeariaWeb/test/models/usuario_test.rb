require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
   test 'usuario com nome vazio' do
     user = Usuario.new(nome:"Alvanir", sobrenome:"Teste", senha:"123456789", cpf:"12345678900", contato:"12345678")
    assert_not user.save
   end
end
