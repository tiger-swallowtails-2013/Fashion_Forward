class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id

    if @question.save
      redirect_to question_answers_path(@question.id)
    else
      redirect_to questions_path
    end
  end

  def new
    @question = Question.new
  end

  private
  def question_params
    params.require(:question).permit(:title, :body)
  end
end