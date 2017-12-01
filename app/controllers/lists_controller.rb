class ListsController < ApplicationController
  before_action :set_list

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @destination = @list.destinations.new
    render partial: "form"
  end

  def edit
    redner partial: "form"
  end

  def create
    @destination = @list.destinations.new(destination_params)
    if 

  def update
  end

  def destroy
  end

  private
    def set_list
      @list = List.find(params[:id])
    end
end
