class Review < ApplicationRecord
  belongs_to :client

  def self.by_client_id(id)
    where(client_id: id)
  end
end
