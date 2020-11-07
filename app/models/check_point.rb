class CheckPoint < ApplicationRecord
  acts_as_sortable do |config|
    config[:append] = true
  end

  belongs_to :track
  belongs_to :animal
  has_many :quiz_check_point_questions

  validates :name, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
end
