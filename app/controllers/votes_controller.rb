class VotesController < ApplicationController
  def new

  end

  def create
    answer = Answer.find(params[:answer_id])
    @vote = answer.votes.create(user_id: current_user.id)
    redirect_to question_answers_path(answer.question)
  end
end