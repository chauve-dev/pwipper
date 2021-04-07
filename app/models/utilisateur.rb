class Utilisateur < ApplicationRecord
  has_many :pweeps
  has_one_attached :avatar
end