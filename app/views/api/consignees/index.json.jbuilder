json.array! @consignees.each do |consignee|
  json.name consignee.name
  json.phone consignee.phone
  json.email consignee.email
  json.street_address consignee.street_address
  json.address_2 consignee.address_2
  json.city consignee.city
  json.state consignee.state
  json.zip consignee.zip
end