class Api::QuizSerializer < ActiveModel::Serializer
  belongs_to :check_point, serializer: Api::CheckPointSerializer
  belongs_to :animal, serializer: Api::AnimalSerializer
  belongs_to :question, serializer: Api::QuestionSerializer

  def check_point
    object.check_point
  end

  def animal
    object.animal
  end

  def question
    object.question
  end
end
