class ActivitiesController < ApplicationController

  require 'time'
  require 'date'

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to activities_path
    else
      redirect_to activities_path
    end
  end

  def update
    @activity = Activity.where(id:params[:id]).first_or_initialize
    if @activity.update(activity_params)
      redirect_to activities_path
    else
      render 'edit'
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to activities_path
  end

  private
    def activity_params
      params.require(:activity).permit(:start_date, :end_date, :manager_id, :client_id, :duration, :activity_type_id, :created_at, :updated_at, :provider_id)
    end

    def activity_type_params
      params.require(:activity_type).permit(:name)
    end

end