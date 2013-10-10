class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(params[:question])
    p params
    @question.save

    if @question.persisted?
      redirect_to @question
    else
      render 'new'
    end
  end

  def new
    @question = Question.new
  end

end