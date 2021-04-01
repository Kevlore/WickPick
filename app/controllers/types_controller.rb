class TypesController < ApplicationController
  def show
    @type = Type.find(params[:id])
  end

  def index
    @types = Type.order(:type_name)
  end
end
