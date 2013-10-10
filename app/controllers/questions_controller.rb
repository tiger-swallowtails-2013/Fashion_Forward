class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def create
    render 'new'
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
  end
end