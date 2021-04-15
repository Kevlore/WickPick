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


  protected
  def
    configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :full_name, :address, :province, :password) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :full_name, :address, :province, :password, :current_password) }
    end
end
