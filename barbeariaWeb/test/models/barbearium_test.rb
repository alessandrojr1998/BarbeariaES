require 'test_helper'

class BarbeariumTest < ActiveSupport::TestCase
   test "Criando Barbearia" do
     barb = Barbearium.new(nome:'Teste', contato:'123456789', id:1, endereco_id:1)
     assert_not barb.save
   end
end
