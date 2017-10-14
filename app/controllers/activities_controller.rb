class ActivitiesController < ApplicationController

  def new
    @activity = Activity.new
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to @Activity
    else
      render 'index'
    end
  end

  def update
    @activity = Activity.where(id:params[:id]).first_or_initialize
    if @activity.update(activity_params)
      redirect_to activities_manage_activities_path
    else
      render 'edit'
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to activities_manage_activities_path
  end

  private
    def activity_params
      params.require(:activity).permit(:start_date, :end_date, :duration, :activity_type_id, :client_id, :manager_id, :created_at, :updated_at)
    end
end