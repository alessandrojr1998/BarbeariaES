require 'test_helper'
require 'generators/usuario/usuario_generator'

class UsuarioGeneratorTest < Rails::Generators::TestCase
  tests UsuarioGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
