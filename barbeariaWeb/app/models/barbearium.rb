class Barbearium < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 3}
end
