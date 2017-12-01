class ListsController < ApplicationController
  before_action :set_list, only: [:show, :update, :edit, :destroy]


  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
    render partial: "form"
  end

  def edit
    redner partial: "form"
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def update
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      render :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to list_path
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:name)
    end
end
