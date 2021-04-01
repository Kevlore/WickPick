class CandlesController < ApplicationController
  def index
    @candles = Candle.all
  end

  def show
    @candle = Candle.find(params[:id])
  end
end
