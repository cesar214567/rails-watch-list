class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(lists_params)
    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  private

  def lists_params
    params.require(:list).permit(:name,:image_url)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
