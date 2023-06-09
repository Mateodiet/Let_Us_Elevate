class Challenge < ApplicationRecord
  belongs_to :design
  has_many :user_challenges
end
