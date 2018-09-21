class Stock < ApplicationRecord

  def self.new_form_lookup(ticker_symbol)
    looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
    new(name: looked_up_stock.name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.l)
  end

end
