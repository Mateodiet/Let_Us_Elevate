class Theme < ApplicationRecord
  belongs_to :design
  has_many :challenges
end
