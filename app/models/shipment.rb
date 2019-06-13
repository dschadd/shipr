class Shipment < ApplicationRecord
  
  belongs_to :user
  belongs_to :courier
  belongs_to :shipping_address
  belongs_to :consignee

end
