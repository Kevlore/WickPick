class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Adventurer.find(params[:id])
  end
end
