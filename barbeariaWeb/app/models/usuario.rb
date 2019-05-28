class Usuario < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 3, maximum: 50}
  validates :sobrenome, presence: true, length: {minimum: 3, maximum: 50}
  validates :cpf, presence: true, length: {minimum: 11, maximum: 11}
  validates :contato, length: {maximum: 50}
  validates :senha, presence: true, length: {minimum: 6, maximum: 18}
end
