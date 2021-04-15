class ApplicationController < ActionController::Base
  before_action :initialize_session
  before_action :configure_permitted_parameters, if: :devise_controller?
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

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :password, :password_confirmation, :full_name, :email, :address,])
  end
end
