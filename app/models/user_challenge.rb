class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  STATUSES = [:nul, :moyen, :réussi]
end
