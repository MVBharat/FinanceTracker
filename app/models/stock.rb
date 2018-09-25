class Stock < ApplicationRecord

  def self.new_form_lookup(ticker_symbol)
    looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
    new(comapny_name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, latest_price: looked_up_stock.latest_price)
  end

end
