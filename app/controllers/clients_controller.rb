class ClientsController < ApplicationController

    require 'time'
  require 'date'

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def edit
    @client = Client.find(params[:id])
  end

  def show
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path
    else
      redirect_to clients_path
    end
  end

  def update
    @client = Client.where(id:params[:id]).first_or_initialize
    if @client.update(client_params)
      redirect_to clients_path
    else
      render 'edit'
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end

  private
    def client_params
      params.require(:client).permit(:start_date, :end_date, :manager_id, :client_id, :duration, :client_type_id, :created_at, :updated_at, :provider_id)
    end

    def client_type_params
      params.require(:client_type).permit(:name)
    end

end
