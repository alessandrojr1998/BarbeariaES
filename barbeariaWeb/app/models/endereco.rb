class Endereco < ApplicationRecord
  validates :rua, presence: true, length: {maximum: 50}
  validates :bairro, presence: true, length: {maximum: 20}
  validates :numero, presence: true, length: {minimum: 1, maximum: 8}
  #belongs_to :barbearium
end
