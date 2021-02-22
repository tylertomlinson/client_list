class Client < ApplicationRecord
  has_many :reviews

  def client_names(clients)
    clients.pluck :name
  end

  def subscription_status(client)
    #this is going off how I initially set up table
    #the better way to do this might be with a default status and enum. enum status: [ :inactive, :active ]
    #t.column :status, :integer, default: 0
    if client.subscribed? == true
      'active'
    else
      'inactive'
    end
  end
end
