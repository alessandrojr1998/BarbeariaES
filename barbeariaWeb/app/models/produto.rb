class Produto < ApplicationRecord
  validates :nome, presence: true, length: { minimum: 3, maximum: 50 }
  validates :valor, presence: true, numericality: { greater_than: 0}
  validates :quantidade, presence: true, numericality: { greater_than: -1 }
  belongs_to :barbearium
end
