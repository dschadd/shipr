class Shipment < ApplicationRecord
  
  belongs_to :user
  belongs_to :courier
  belongs_to :shipping_address
  belongs_to :consignee


  def self.shipment_booker
    headers = {
      "Username" => "#{ENV["UPS_EMAIL"]}",
      "Password" => "#{ENV["UPS_PASSWORD"]}", 
      "AccessLicenseNumber" => "#{ENV["UPS_KEY"]}"
    }

    # shipper_address = params[:shipper_address]
    # ship_to_address = params[:ship_to_address]
    # package_dimensions = params[:package_dimensions]


    json_data = {
      "UPSSecurity": {
        "UsernameToken": {
          "Username": "dschadd",
          "Password": "grens111*"
        },
        "ServiceAccessToken": {
          "AccessLicenseNumber": "FD67EA90A84B5F15"
        }
      },
      "ShipmentRequest": {
        "Request": {
          "RequestOption": "validate",
          "TransactionReference": {
            "CustomerContext": "Your Customer Context"
          }
        },
        "Shipment": {
          "Shipper": {
            "Name": "Butch Schadd",
            "ShipperNumber": "43V647",
            "Address": {
              "AddressLine": "569 Yarmouth Rd",
              "City": "Elk Grove Village",
              "StateProvinceCode": "IL",
              "PostalCode": "60007",
              "CountryCode": "US"
              }
            },
          "ShipTo": {
            "Name": "Matt McCracken",
            "Address":{
              "AddressLine": "500 Dogwood Trl",
              "City": "Elk Grove Village",
              "StateProvinceCode": "IL",
              "PostalCode": "60007",
              "CountryCode": "US"
            }
          },
          "PaymentInformation": {
            "ShipmentCharge": {
              "Type": "01",
              "BillShipper": {
                "AccountNumber":
                "43V647"
              }
            }
          },
          "Service": {
            "Code": "03"
          },
          "Package": {
            "Description": "Description",
            "Packaging": { 
              "Code": "02",
              "Description": "Description"
            },
            "Dimensions": {
              "UnitOfMeasurement": {
                "Code": "IN",
                "Description": "Inches"
              },
              "Length": "7",
              "Width": "5",
              "Height": "2"
            },
            "PackageWeight": {
              "UnitOfMeasurement": {
                "Code": "LBS",
                "Description": "Pounds"
              },
              "Weight": "10"
            }
          }
        }
      }
    }

    @shipment_response = HTTP
      .headers(headers)
      .post("https://wwwcie.ups.com/rest/Ship",
        :json => json_data).parse
  end

end