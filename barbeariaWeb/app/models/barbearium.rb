class Barbearium < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 3}
  #validates :contato, presence: true, length: {minimum: 9}
  #validates :user_id, presence: true, length: {minimum: 1}
  #validates :id, presence: true, length: {minimum: 1}
  #validate :endereco_id, presence: true, length: {minimun: 1}
  belongs_to :endereco#, autosave => true, :validate => true

end
