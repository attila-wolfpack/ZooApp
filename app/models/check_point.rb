class CheckPoint < ApplicationRecord
  belongs_to :track
  belongs_to :animal
  has_many :quiz_check_point_questions

  validates :name, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
end
