class CheckoutController < ApplicationController
  def create
    @candle = Candle.find(params[:candle_id])

    if @candle.nil?
      redirect_to root_path
      return
    end

    respond_to do |format|
      format.js # render app/views/checkout/create.js.erb
    end
  end

  def success
    #
  end

  def cancel
    #
  end
end
