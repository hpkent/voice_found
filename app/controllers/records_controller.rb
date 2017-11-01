class RecordsController < ApplicationController
  require 'time'
  require 'date'

  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def edit
    @record = Record.find(params[:id])
  end

  def show
    @record = Record.find(params[:id])
  end

  def create
    @record = Record.new(allowed_params)
    if @record.save
      redirect_to records_path
    else
      redirect_to records_path
    end
  end

  def update
    @record = Record.find(params[:id])
    if @record.update_attributes(allowed_params)
      redirect_to @record, notice: 'Successfully update case'
    else
      render :edit
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to records_path
  end

  private
    def allowed_params
      params.require(:record).permit(:start_date, :end_date, :manager_id, :client_id, :notes, :steps_taken, :risk_level_start, :risk_level_end, :closed, :created_at, :updated_at, activities_attributes: [:id, :state_date, :end_date, :duration, :activity_type_id, :client_id, :manager_id, :provider_id, :created_at, :updated_at, :_destroy])
    end

end
