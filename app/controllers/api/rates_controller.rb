class Api::RatesController < ApplicationController

  def create

    headers = {
      "Username" => "#{ENV["UPS_EMAIL"]}",
      "Password" => "#{ENV["UPS_PASSWORD"]}", 
      "AccessLicenseNumber" => "#{ENV["UPS_KEY"]}"
    }

    shipper_address = params[:shipper_address]
    ship_to_address = params[:ship_to_address]
    
    json_data = {
  "RateRequest": {
    "Shipment": {
      "Shipper": {
        "Address": {
          "AddressLine": "569 Yarmouth Rd",
          "City": "Elk Grove Village",
          "StateProvinceCode": "IL",
          "PostalCode": "60007",
          "CountryCode": "US"
          }
        },
      "ShipTo": {
        "Address":{
          "AddressLine": "500 Dogwood Trl",
          "City": "Elk Grove Village",
          "StateProvinceCode": "IL",
          "PostalCode": "60007",
          "CountryCode": "US"
        }
      },
      "Package": {
        "PackagingType": {
          "Code": "02"
        },
        "Dimensions": {
          "UnitOfMeasurement": {
            "Code": "IN"
          },
          "Length": "5",
          "Width": "4",
          "Height": "3"
        },
        "PackageWeight": {
          "UnitOfMeasurement": {
            "Code": "Lbs",
            "Description": "pounds"
          },
          "Weight": "1"
        }
      }
    }
  }
}


    # {
    #   "RateRequest": {
    #     "Shipment": {
    #       "Shipper": {
    #         "Address": {
    #           "AddressLine": "#{shipper_address["address_line"]}",
    #           "City": "#{shipper_address["city"]}",
    #           "StateProvinceCode": "#{shipper_address["state_code"]}",
    #           "PostalCode": "#{shipper_address["postal_code"]}",
    #           "CountryCode": "#{shipper_address["country_code"]}"
    #           }
    #         },
    #       "ShipTo": {
    #         "Address":{
    #           "AddressLine": "#{ship_to_address["address_line"]}",
    #           "City": "#{ship_to_address["city"]}",
    #           "StateProvinceCode": "#{ship_to_address["state_code"]}",
    #           "PostalCode": "#{ship_to_address["postal_code"]}",
    #           "CountryCode": "#{ship_to_address["country_code"]}"
    #         }
    #       },
    #       "Package": {
    #         "PackagingType": {
    #           "Code": "02"
    #         },
    #         "Dimensions": {
    #           "UnitOfMeasurement": {
    #             "Code": "IN"
    #           },
    #           "Length": "5",
    #           "Width": "4",
    #           "Height": "3"
    #         },
    #         "PackageWeight": {
    #           "UnitOfMeasurement": {
    #             "Code": "Lbs",
    #             "Description": "pounds"
    #           },
    #           "Weight": "1"
    #         }
    #       }
    #     }
    #   }
    # }

    @rate_response = HTTP
      .headers(headers)
      .post("https://wwwcie.ups.com/ship/v1801/rating/Shop",
        :json => json_data).parse

    render "show.json.jbuilder"

  end

end


# {
#       "UPSSecurity": {
#         "UsernameToken": {
#           "Username": "Your User Id",
#           "Password": "Your Password"
#         },
#         "ServiceAccessToken": {
#           "AccessLicenseNumber": "Your Access License"
#         }
#       },
#       "RateRequest": {
#         "Request": {
#           "RequestOption": "Rate",
#           "TransactionReference": {
#             "CustomerContext": "Your Customer Context"
#           }
#         },
#         "Shipment": {
#           "Shipper": {
#             "Name": "Shipper Name",
#             "ShipperNumber": "Shipper Number",
#             "Address": {
#               "AddressLine": [
#                 "Address Line ",
#                 "Address Line ",
#                 "Address Line "
#               ],
#               "City": "City",
#               "StateProvinceCode": "State Province Code",
#               "PostalCode": "Postal Code",
#               "CountryCode": "US"
#             }
#           },
#           "ShipTo": {
#             "Name": "Ship To Name",
#             "Address": {
#               "AddressLine": [
#                 "Address Line ",
#                 "Address Line ",
#                 "Address Line "
#               ],
#               "City": "City",
#               "StateProvinceCode": "State Province Code",
#               "PostalCode": "Postal Code",
#               "CountryCode": "US"
#             }
#           },
#           "ShipFrom": {
#             "Name": "Ship From Name",
#             "Address": {
#               "AddressLine": [
#                 "Address Line ",
#                 "Address Line ",
#                 "Address Line "
#               ],
#               "City": "City",
#               "StateProvinceCode": "State Province Code",
#               "PostalCode": "Postal Code",
#               "CountryCode": "US"
#             }
#           },
#           "Service": {
#             "Code": "03",
#             "Description": "Service Code Description"
#           },
#           "Package": {
#             "PackagingType": {
#               "Code": "02",
#               "Description": "Rate"
#             },
#             "Dimensions": {
#               "UnitOfMeasurement": {
#                 "Code": "IN",
#                 "Description": "inches"
#               },
#               "Length": "5",
#               "Width": "4",
#               "Height": "3"
#             },
#             "PackageWeight": {
#               "UnitOfMeasurement": {
#                 "Code": "Lbs",
#                 "Description": "pounds"
#               },
#               "Weight": "1"
#             }
#           },
#           "ShipmentRatingOptions": {
#             "NegotiatedRatesIndicator": ""
#           }
#         }
#       }
#     }