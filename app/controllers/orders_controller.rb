class OrdersController < ApplicationController
  def index
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    if current_customer
      @customer = current_customer
    else
      redirect_to candles_path
    end
  end

  def create
    @order = Order.new()

    if order.save
      redirect_to @order
    else
      render :new
    end
  end
end
