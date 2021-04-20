class Pweep < ApplicationRecord
  belongs_to :utilisateur
  has_many :pourtag
end
