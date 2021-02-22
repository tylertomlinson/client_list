class Client < ApplicationRecord
  validates :name, presence: true
  validates :subscribed, presence: true

  has_many :reviews

  def self.client_names(clients)
    clients.pluck :name
  end

  def self.subscription_status(client)
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
