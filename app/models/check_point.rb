class CheckPoint < ApplicationRecord
  belongs_to :track

  validates :name, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
end
