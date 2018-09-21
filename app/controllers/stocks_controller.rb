class StocksController < ApplicationController

  def search
    @stock = Stock.new_form_lookup(params[:stock])
    render json: @stock
  end
  
end
