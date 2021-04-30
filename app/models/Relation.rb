class Relation < ApplicationRecord
  validates :user_id, uniqueness: { scope: :follower_id }
  belongs_to :utilisateur, optional: true
end
