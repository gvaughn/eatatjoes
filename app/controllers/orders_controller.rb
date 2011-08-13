class OrdersController < ApplicationController
  before_filter :authenticate_user!

  def create
    @order = Order.new(params[:order])
    @restaurant = @order.restaurant

    respond_to do |format|
      if @order.save
        format.html { redirect_to @restaurant, notice: 'Order was successfully created.' }
        format.json { render json: @restaurant, status: :created, location: @restaurant }
      else
        format.html { render "restaurants/show" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

end
