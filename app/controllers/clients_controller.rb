class ClientsController < ApplicationController

  def index
    render json: all_clients
  end

  def show
    id = params[:id]
    #will return active or inactive of client subscription depending on boolean statment
    subscription_status = Client.subscription_status(one_client(id))
    render json: one_client(id)
  end

  def create
    client = Client.new(client_params)
    if client.save
      render json: client, status: :created
    else
      msg = { error: client.errors.full_messages.to_sentence}
      render json: msg, status: :bad_request
    end
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

  def client_params
    params.permit(:name, :subscribed)
  end
end
