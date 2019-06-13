class Shipment < ApplicationRecord
  
  belongs_to :user
  belongs_to :courier
  belongs_to :shipping_address
  belongs_to :consignee

  def ups_rate_getter

    {
      "UPSSecurity": {
        "UsernameToken": {
          "Username": "Your User Id",
          "Password": "Your Password"
        },
        "ServiceAccessToken": {
          "AccessLicenseNumber": "Your Access License"
        }
      },
      "RateRequest": {
        "Request": {
          "RequestOption": "Rate",
          "TransactionReference": {
            "CustomerContext": "Your Customer Context"
          }
        },
        "Shipment": {
          "Shipper": {
            "Name": "Shipper Name",
            "ShipperNumber": "Shipper Number",
            "Address": {
              "AddressLine": [
                "Address Line ",
                "Address Line ",
                "Address Line "
              ],
              "City": "City",
              "StateProvinceCode": "State Province Code",
              "PostalCode": "Postal Code",
              "CountryCode": "US"
            }
          },
          "ShipTo": {
            "Name": "Ship To Name",
            "Address": {
              "AddressLine": [
                "Address Line ",
                "Address Line ",
                "Address Line "
              ],
              "City": "City",
              "StateProvinceCode": "State Province Code",
              "PostalCode": "Postal Code",
              "CountryCode": "US"
            }
          },
          "ShipFrom": {
            "Name": "Ship From Name",
            "Address": {
              "AddressLine": [
                "Address Line ",
                "Address Line ",
                "Address Line "
              ],
              "City": "City",
              "StateProvinceCode": "State Province Code",
              "PostalCode": "Postal Code",
              "CountryCode": "US"
            }
          },
          "Service": {
            "Code": "03",
            "Description": "Service Code Description"
          },
          "Package": {
            "PackagingType": {
              "Code": "02",
              "Description": "Rate"
            },
            "Dimensions": {
              "UnitOfMeasurement": {
                "Code": "IN",
                "Description": "inches"
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
          },
          "ShipmentRatingOptions": {
            "NegotiatedRatesIndicator": ""
          }
        }
      }
    }

  end

end
