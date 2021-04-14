class CandlesController < ApplicationController
  def index
    @candles = Candle.page params[:page]
  end

  def show
    @candle = Candle.find(params[:id])
  end
end
