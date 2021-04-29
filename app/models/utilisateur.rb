class Utilisateur < ApplicationRecord
  has_many :pweeps
  has_one_attached :avatar
  has_many :followRelations
  has_many :utilisateurs, through: :followRelations
end
