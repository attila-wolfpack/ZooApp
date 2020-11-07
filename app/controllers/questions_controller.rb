class QuestionsController < ApplicationController
  before_action :set_question, only: [:edit, :update, :destroy]
  before_action :set_animal

  def index
    @questions = @animal.questions
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def create
    @question = Question.new(question_params.merge(animal: @animal))

    if @question.save
      redirect_to animal_questions_url(@animal), notice: 'Question was successfully created.'
    else
      render :new
    end
  end

  def update
    if @question.update(question_params)
      redirect_to animal_questions_url(@animal), notice: 'Question was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    
    redirect_to animal_questions_url(@animal), notice: 'Question was successfully destroyed.'
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def set_animal
      @animal = Animal.find(params[:animal_id])
    end

    def question_params
      params.require(:question).permit(:body, :correct_answer, :answer1, :answer2, :answer3)
    end
end
