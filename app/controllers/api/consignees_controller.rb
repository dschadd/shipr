class Api::ConsigneesController < ApplicationController

  def index
    @consignees = Consignee.all
    render "index.json.jbuilder"
  end

  def create
    @consignee = Consignee.new(
      name: params[:name],
      phone: params[:phone],
      email: params[:email],
      street_address: params[:street_address],
      address_2: params[:address_2],
      city: params[:city],
      state: params[:state],
      zip: params[:zip]
      )
    if @consignee.save
      render "show.json.jbuilder"
    else
      render json: {errors: @consignee.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @consignee = Consignee.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @consignee = Consignee.find_by(id: params[:id])
    @consignee.name = params[:name] || @consignee.name
    @consignee.phone = params[:phone] || @consignee.phone
    @consignee.email = params[:email] || @consignee.email
    @consignee.street_address = params[:street_address] || @consignee.street_address
    @consignee.address_2 = params[:address_2] || @consignee.address_2
    @consignee.city = params[:city] || @consignee.city
    @consignee.state = params[:state] || @consignee.state
    @consignee.zip = params[:zip] || @consignee.zip

    if @consignee.save
      render "show.json.jbuilder"
    else
      render json: {errors: @consignee.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @consignee = Consignee.find_by(id: params[:id])
    @consignee.destroy
  end

end
