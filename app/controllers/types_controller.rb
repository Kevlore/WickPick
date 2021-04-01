class TypesController < ApplicationController
  def show
    @types = Type.order(:type_name)
  end

  def index
    @type = Type.find(params[:id])
  end
end
