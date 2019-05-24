json.array! @shipments.each do |shipment|
  json.description shipment.description
  json.price shipment.price
  json.weight shipment.weight
  json.length shipment.length
  json.width shipment.width
  json.height shipment.height
end