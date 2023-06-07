class Challenge < ApplicationRecord
  belongs_to :theme
  has_many :user_challenges
end
