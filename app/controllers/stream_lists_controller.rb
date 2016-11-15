class StreamListsController < ApplicationController
  before_action :set_stream_list, only: [:show, :edit, :update, :destroy]

  # GET /stream_lists
  # GET /stream_lists.json
  def index
    @stream_lists = StreamList.all
  end

  # GET /stream_lists/1
  # GET /stream_lists/1.json
  def show
  end

  # GET /stream_lists/new
  def new
    @stream_list = StreamList.new
  end

  # GET /stream_lists/1/edit
  def edit
  end

  # POST /stream_lists
  # POST /stream_lists.json
  def create
    @stream_list = StreamList.new(stream_list_params)

    respond_to do |format|
      if @stream_list.save
        format.html { redirect_to @stream_list, notice: 'Stream list was successfully created.' }
        format.json { render :show, status: :created, location: @stream_list }
      else
        format.html { render :new }
        format.json { render json: @stream_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stream_lists/1
  # PATCH/PUT /stream_lists/1.json
  def update
    respond_to do |format|
      if @stream_list.update(stream_list_params)
        format.html { redirect_to @stream_list, notice: 'Stream list was successfully updated.' }
        format.json { render :show, status: :ok, location: @stream_list }
      else
        format.html { render :edit }
        format.json { render json: @stream_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stream_lists/1
  # DELETE /stream_lists/1.json
  def destroy
    @stream_list.destroy
    respond_to do |format|
      format.html { redirect_to stream_lists_url, notice: 'Stream list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stream_list
      @stream_list = StreamList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stream_list_params
      params.require(:stream_list).permit(:title, :description)
    end
end
