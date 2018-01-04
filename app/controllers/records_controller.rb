class RecordsController < ApplicationController
  require 'time'
  require 'date'
  helper :records

  def index
    @recent_records = Record.recent_records
    @older_records  = Record.older_records
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
    @record = Record.new(record_params)
    if @record.save
      redirect_to records_path
    else
      render :new
    end
  end

  def update
    @record = Record.find(params[:id])
    if @record.update_attributes(record_params)
      redirect_to @record, notice: 'Successfully updated record'
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
    def record_params
      params.require(:record).permit(:start_date, :end_date, :manager_id, :client_id, :notes, :steps_taken, :risk_level_start_id, :risk_level_end_id, :closed, :stage_id, :created_at, :updated_at, activities_attributes: [:id, :start_date, :end_date, :duration, :activity_type_id, :client_id, :manager_id, :provider_id, :created_at, :updated_at, :_destroy])
    end

end
