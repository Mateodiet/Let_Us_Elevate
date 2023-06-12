class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  validates :status, presence: true
  STATUSES = [:planifié, :réussi]
end
