class VotesController < ApplicationController
  def new

  end

  def create
    answer = Answer.find(answer_params[:answer_id])
    p params
    p current_user
    p answer
    @vote = answer.votes.create(user_id: current_user.id)
    p @vote.errors
    redirect_to question_answers_path(answer.question)
  end


  private
  def answer_params
    params.permit(:answer_id)
  end
end