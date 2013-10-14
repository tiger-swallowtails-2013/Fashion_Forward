class AnswersController < ApplicationController


  def index
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answers = @question.answers
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id
    @answer.save
    redirect_to question_answers_path(params[:answer][:question_id])
  end

  private
  def answer_params
    params.require(:answer).permit(:body,:user_id,:question_id)
  end

end