class Utilisateur < ApplicationRecord
  validates :username, :nickname, :email, :password, :bio, presence: true
  validates :email, :username, uniqueness: true
  has_many :pweeps
  has_one_attached :avatar
  has_many :relation
  has_many :utilisateurs, through: :relation
end
