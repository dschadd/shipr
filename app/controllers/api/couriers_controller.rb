class Api::CouriersController < ApplicationController

  def index
    @couriers = Courier.all
    render "index.json.jbuilder"
  end

  def create
    @courier = Courier.new(
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip: params[:zip]
      )
    if @courier.save
      render "show.json.jbuilder"
    else
      render json: {errors: @courier.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @courier = Courier.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @courier = Courier.find_by(id: params[:id])
    @courier.name = params[:name] || @courier.name
    @courier.phone = params[:phone] || @courier.phone
    @courier.email = params[:email] || @courier.email
    @courier.address = params[:address] || @courier.address
    @courier.city = params[:city] || @courier.city
    @courier.state = params[:state] || @courier.state
    @courier.zip = params[:zip] || @courier.zip

    if @courier.save
      render "show.json.jbuilder"
    else
      render json: {errors: @courier.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @courier = Courier.find_by(id: params[:id])
    @courier.destroy
  end

end
