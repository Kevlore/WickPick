class CandlesController < ApplicationController
  def index
    # @candles = Candle.page params[:page]
    if params['type'].blank? or params['type']['id'].blank?
      @candles = Candle.all
    else
      # type = Type.find(params['type']['id'])
      # @candles = type.candles
      @candles = Type.find(params['type']['id']).candle
    end

    @candles = @candles.search(params[:keywords]).order('created_at DESC')
    @candles = @candles.page params[:page]
  end

  def show
    @candle = Candle.find(params[:id])
  end
end
