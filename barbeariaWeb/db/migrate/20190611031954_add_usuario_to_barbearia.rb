class AddUsuarioToBarbearia < ActiveRecord::Migration[5.1]
  def change
    add_reference :barbearia, :usuario, foreign_key: true
  end
end
