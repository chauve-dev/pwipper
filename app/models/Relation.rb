class Relation < ApplicationRecord
  validates :utilisateur_id, uniqueness: { scope: :follower_id }
  belongs_to :utilisateur, optional: true
end
