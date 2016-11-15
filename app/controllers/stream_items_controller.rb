class StreamItemsController < ApplicationController
  before_action :set_stream_list
  before_action :set_stream_item, except: [:create]

  def create
    @stream_item = @stream_list.stream_items.create(stream_item_params)
    redirect_to @stream_list
  end

  def destroy
    if @stream_item.destroy
      flash[:success] = "Stream item was deleted"
    else
      flash[:error] = "Stream item could not be deleted"
    end
    redirect_to @stream_list
  end

  def complete
    @stream_item.update_attribute(:completed_at, Time.now)
    redirect_to @stream_list, notice: "Stream item completed"
  end

  private

  def set_stream_item
    @stream_item = @stream_list.stream_items.find(params[:id])
  end

  def set_stream_list
    @stream_list = StreamList.find(params[:stream_list_id])
  end

  def stream_item_params
    params[:stream_item].permit(:content)
  end

end
