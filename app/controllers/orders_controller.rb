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
    # @order = Order.new(order_params)
    if current_customer
      @customer = current_customer
    else
      redirect_to candles_path
    end

    province = Province.find(@customer.provinces_id)
    pst = province.pst
    gst = province.gst
    hst = province.hst

    customer_id = Customer.find (@customer.id)
    new_order = Order.create(
      shipping_address: @customer.address,
      date: Date.today.to_s,
      order_status: "Ordered",
      pst: pst,
      gst: gst,
      hst: hst,
      customer: customer_id
    )

    cart = session[:shopping_cart]
    cart.each do |item|
      candle = Candle.find(item)

      order_detail = OrderDetail.create(
        price: candle.price,
        quantity: 1,
        candle: candle,
        order: new_order
      )

      if order_detail.valid?
        # redirect_to "/candles"
      else
        flash[:notice] = order_detail.errors.messages
      end
    end

    if new_order.valid?
      session[:shopping_cart] = nil
      redirect_to "/candles"
    else
      render :new
    end

    # if @order.save
    #   redirect_to @order
    # else
    #   render :new
    # end
  end

  private
    def order_params
      params.require(:order).permit(:shipping_address, :date, :order_status, :pst, :gst, :hst, :customer, :price)
    end
end
