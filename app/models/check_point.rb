class CheckPoint < ApplicationRecord
  belongs_to :track
  belongs_to :animal

  validates :name, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
end
