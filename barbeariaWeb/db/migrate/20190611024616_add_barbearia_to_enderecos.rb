class AddBarbeariaToEnderecos < ActiveRecord::Migration[5.1]
  def change
    add_reference :enderecos, :barbearium, foreign_key: true
  end
end
