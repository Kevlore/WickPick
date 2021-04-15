class CustomersController < ApplicationController
  before_action :authenticate_customer!
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
