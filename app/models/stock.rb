class Stock < ApplicationRecord::Base

  def self.new_from_lookup(ticker_symbol)
    looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
    new( ticker: looked_up_stock.symbol, name: looked_up_stock.company_name, last_price: looked_up_stock.latest_price)
  end

end
