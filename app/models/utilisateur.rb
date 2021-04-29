class Utilisateur < ApplicationRecord
  has_many :pweeps
  has_one_attached :avatar
  has_many :relation
  has_many :utilisateurs, through: :relation
end
