class AnswersController < ApplicationController


  def index
    @question = Question.find(params[:question_id])
    @answers = @question.answers
  end

  def new
    @question = Question.find(params[:question_id])
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

end
