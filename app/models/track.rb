class Track < ApplicationRecord
  has_many :check_points, dependent: :destroy

  has_one_attached :photo

  validates :name, presence: true
  validates :city, presence: true

  def check_points_count
    check_points.count
  end
end
