class Animal < ApplicationRecord
  has_many :questions, dependent: :destroy

  has_one_attached :model
  has_one_attached :texture

  validates :name, presence: true
  validates :model, presence: true
end
