class Question < ApplicationRecord
  belongs_to :animal

  validates :body, presence: true
  validates :correct_answer, presence: true
  validate :ensure_min_1_wrong_answer

  def ensure_min_1_wrong_answer
    errors.add(:answer1, 'can\'t be blank') if [answer1, answer2, answer3].reject(&:empty?).blank?
  end
end
