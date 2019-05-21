class User < ApplicationRecord

  has_many :shipments
  has_many :shipping_addresses

end
