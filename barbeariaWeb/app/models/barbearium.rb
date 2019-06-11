class Barbearium < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 3}
  validates :contato, presence: true, length: {minimum: 9}

  has_one :endereco#, autosave => true, :validate => true
  belongs_to :usuario

end
