class ClientsController < ApplicationController

  def index
    #will return only the client names
    names = client_obj.client_names(all_clients)
    render json: all_clients
  end

  def show
    id = params[:id]
    #will return active or inactive of client subscription depending on boolean statment
    subscription_status = client_obj.subscription_status(one_client(id))
    render json: one_client(id)
  end

  private

  def client_obj
    Client.new
  end

  def all_clients
    Client.all
  end

  def one_client(id)
    Client.find(params[:id])
  end
end
