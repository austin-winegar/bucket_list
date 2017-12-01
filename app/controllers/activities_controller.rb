class ActivitiesController < ApplicationController
  
  
    def index
      @activities = List.activities
    end
  
    def show
    end
  
    def new
      @activities = @list.Activities.new
      render partial: "form"
    end
  
    def edit
      render partial: "form"
    end
  
    def create
      @activities = Activities.new
      @activities = @list.Activities.new(activities_params)
      if @activities.save
        redirect_to list_activities_path(@list, @activities)
      else
        render partial: "form"
      end
    end
  
    def update
      if @activities.update(list_params)
        redirect_to activities_path(@activities)
      else
        render :edit
      end
    end
  
    def destroy
      @activities.destroy
      redirect_to activities_path
    end
  
    private
  
    def activities_params
      @activities = activities.find(params[:id])
    end
  
    def set_list
      @list = list.find(params[:id])
    end
  
  end