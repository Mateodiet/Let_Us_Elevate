class Design < ApplicationRecord
  has_many :user_designs
  has_many :challenges
end
