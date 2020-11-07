class Quiz
  include ActiveModel::Model

  attr_accessor :check_point, :animal, :question

  def initialize(check_point:, animal:, question:)
    @check_point = check_point
    @animal = animal
    @question = question
  end
end