class ListsController < ApplicationController
  def create
    if @list = current_user.lists.create(list_params)
      render :json => render_to_string(partial: 'mini_show').to_json
    else

    end
  end

  def destroy
    list = List.find(params[:id])
    render :json => list.destroy.to_json
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
