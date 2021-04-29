class Relation < ApplicationRecord
  belongs_to :utilisateur, optional: true
end
