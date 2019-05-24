json.array! @shipping_addresses.each do |shipping_address|
  json.name shipping_address.name
  json.phone shipping_address.phone
  json.email shipping_address.email
  json.address shipping_address.address
  json.city shipping_address.city
  json.state shipping_address.state
  json.zip shipping_address.zip
end