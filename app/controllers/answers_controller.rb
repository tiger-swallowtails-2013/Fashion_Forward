class AnswersController < ApplicationController
  before_action :load_question, only: [:index, :new]

  def index
    @answers = @question.answers
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = current_user.answers.create(answer_params)

    if @answer.valid?
      redirect_to question_answers_path
    else
      render 'new'
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:body,:question_id)
  end

  def load_question
    @question = Question.find(params[:question_id])
  end

end
