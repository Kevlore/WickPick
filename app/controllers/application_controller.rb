class ApplicationController < ActionController::Base
  before_action :initialize_session
  helper_method :cart

  private

  def initialize_session
    # Shopping cart is an array of candle_id's
    session[:shopping_cart] ||= []
  end

  def cart
    # Takes in an array of id's and returns a collection of candles
    Candle.find(session[:shopping_cart])
  end
end
