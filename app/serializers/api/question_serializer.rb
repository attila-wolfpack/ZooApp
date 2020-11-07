class Api::QuestionSerializer < ActiveModel::Serializer
  attributes :id, :body, :correct_answer
  attribute :answers

  def answers
    [object.correct_answer, object.answer1, object.answer2, object.answer3].reject(&:blank?).shuffle
  end
end
