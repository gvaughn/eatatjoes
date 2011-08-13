class OrdersController < ApplicationController
  before_filter :authenticate_user!

  def create
    @order = Order.new(params[:order])
    @restaurant = @order.restaurant

    respond_to do |format|
      if @order.save
        format.html { redirect_to restaurants_path, notice: 'Order was successfully created.' }
        format.json { render json: @order, status: :created, location: restaurants_path }
      else
        format.html { render "restaurants/show" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @my_orders = current_user.orders
    @my_retaurants_orders = Order.where :restaurant_id => current_user.restaurant_ids
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @my_retaurants_orders }
    end
    
  end
end
