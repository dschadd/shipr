class Shipment < ApplicationRecord
  
  belongs_to :user
  belongs_to :courier
  belongs_to :shipping_address
  belongs_to :consignee

#   This is the JSON Body Form for booking a shipment.
#   {
#   "UPSSecurity": {
#     "UsernameToken": {
#       "Username": "dschadd",
#       "Password": "grens111*"
#     },
#     "ServiceAccessToken": {
#       "AccessLicenseNumber": "FD67EA90A84B5F15"
#     }
#   },
#   "ShipmentRequest": {
#     "Request": {
#       "RequestOption": "validate",
#       "TransactionReference": {
#         "CustomerContext": "Your Customer Context"
#       }
#     },
#     "Shipment": {
#       "Shipper": {
#         "Name": "Butch Schadd",
#         "ShipperNumber": "43V647",
#         "Address": {
#           "AddressLine": "569 Yarmouth Rd",
#           "City": "Elk Grove Village",
#           "StateProvinceCode": "IL",
#           "PostalCode": "60007",
#           "CountryCode": "US"
#           }
#         },
#       "ShipTo": {
#         "Name": "Matt McCracken",
#         "Address":{
#           "AddressLine": "500 Dogwood Trl",
#           "City": "Elk Grove Village",
#           "StateProvinceCode": "IL",
#           "PostalCode": "60007",
#           "CountryCode": "US"
#         }
#       },
#       "PaymentInformation": {
#         "ShipmentCharge": {
#           "Type": "01",
#           "BillShipper": {
#             "AccountNumber":
#             "43V647"
#           }
#         }
#       },
#       "Service": {
#         "Code": "01",
#         "Description": "Express"
#       },
#       "Package": {
#         "Description": "Description",
#         "Packaging": { 
#           "Code": "02",
#           "Description": "Description"
#         },
#         "Dimensions": {
#           "UnitOfMeasurement": {
#             "Code": "IN",
#             "Description": "Inches"
#           },
#           "Length": "7",
#           "Width": "5",
#           "Height": "2"
#         },
#         "PackageWeight": {
#           "UnitOfMeasurement": {
#             "Code": "LBS",
#             "Description": "Pounds"
#           },
#           "Weight": "10"
#         }
#       }
#     }
#   }
# }

end