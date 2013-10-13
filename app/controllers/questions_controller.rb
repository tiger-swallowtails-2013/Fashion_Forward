class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = 1 #change once sessions has been enabled

    if @question.save
      redirect_to @question
    else
      render 'new'
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
