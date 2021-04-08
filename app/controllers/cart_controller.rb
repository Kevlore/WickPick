class CartController < ApplicationController
  def create
    logger.debug("Adding #{params[:id]} to the shopping cart.")
    id = params[:id].to_i
    session[:shopping_cart] << id
    candle = Candle.find(id)
    flash[:notice] = "Added #{candle.scent} candle to the cart."
    redirect_to '/candles'
  end

  def destroy
    logger.debug("Removing #{params[:id]} from the shopping cart.")
    id = params[:id].to_i
    session[:shopping_cart].delete(id)
    candle = Candle.find(id)
    flash[:notice] = "Removed #{candle.scent} candle from the cart."
    redirect_to '/candles'
  end
end
