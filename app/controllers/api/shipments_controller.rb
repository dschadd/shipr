class Api::ShipmentsController < ApplicationController


  def index
    puts Shipment.ups_rate_getter
    @shipments = Shipment.all
    render "index.json.jbuilder"
  end

  def create

    @shipment = Shipment.shipment_booker

    # @shipment = Shipment.new(
    #   description = params[:description],
    #   price = params[:price],
    #   weight = params[:weight],
    #   length = params[:length],
    #   width = params[:width],
    #   height = params[:height]
    #   )
    # if @shipment.save
    #   render "show.json.jbuilder"
    # else
    #   render json: {errors: @shipment.errors.full_messages}, status: :unprocessable_entity
    # end

    render "show.json.jbuilder"
  end

  def show
    @shipment = Shipment.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @shipment = Shipment.find_by(id: params[:id])
    @shipment.description = params[:description] || @shipment.description
    @shipment.price = params[:price] || @shipment.price
    @shipment.weight = params[:weight] || @shipment.weight
    @shipment.length = params[:length] || @shipment.length
    @shipment.width = params[:width] || @shipment.width
    @shipment.height = params[:height] || @shipment.height

    if @shipment.save
      render "show.json.jbuilder"
    else
      render json: {errors: @shipment.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @shipment = Shipment.find_by(id: params[:id])
    @shipment.destroy
  end

end
