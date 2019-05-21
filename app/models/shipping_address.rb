class ShippingAddress < ApplicationRecord
  has_many :shipments
  belongs_to :users
end
