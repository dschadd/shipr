class Api::ShippingAddressesController < ApplicationController
  
  def index
    @shipping_addresses = Shipping_addresses.all
    render "index.json.jbuilder"
  end

  def create
    @shipping_address = Shipping_address.new(
      name: params[:name],
      phone: params[:phone],
      email: params[:email],
      street_address: params[:street_address],
      address_2: params[:address_2],
      city: params[:city],
      state: params[:state],
      zip: params[:zip]
    )
    if @shipping_address.save
      render "show.json.jbuilder"
    else
      render json: {errors: @shipping_address.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @shipping_address = Shipping_address.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @shipping_address = Shipping_address.find_by(id: params[:id])
    @shipping_address.name =  params[:name] || shipping_address.name 
    @shipping_address.phone =  params[:phone] || shipping_address.phone 
    @shipping_address.email =  params[:email] || shipping_address.email 
    @shipping_address.street_address = params[:street_address] || shipping_address.street_address
    @shipping_address.address_2 = params[:address_2] || shipping_address.address_2
    @shipping_address.city =  params[:city] || shipping_address.city 
    @shipping_address.state =  params[:state] || shipping_address.state 
    @shipping_address.zip =  params[:zip] || shipping_address.zip

    if @shipping_address.save
      render "show.json.jbuilder"
    else
      render json: {errors: @shipping_address.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @shipping_address = Shipping_address.find_by(id: params[:id])
    @shipping_address.destroy
  end

end
