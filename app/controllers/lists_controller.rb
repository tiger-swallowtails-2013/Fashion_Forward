class ListsController < ApplicationController
  before_filter :is_owner?, only: [:add_question]

  def create
    @list = current_user.lists.new(list_params)
    if @list.save
      render :json => render_to_string(:partial => 'mini_show').to_json
    else
      #handle ajax:error
    end
  end



  def add_question
    p params
    @association = ListQuestion.create(list_id: params[:list_id], question_id: params[:question_id])
    render text: "success"
  end

  private

  def is_owner?
    @list = List.find(params[:list_id])
    @list.user_id == current_user.id
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
