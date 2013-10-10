class AnswersController < ApplicationController

  
  def index
    @answers = Answer.all
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    p @answer.save

    if @answer.persisted?
      redirect_to question_answers_path
    else
      render 'new'
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:body,:user_id,:question_id)
  end

end