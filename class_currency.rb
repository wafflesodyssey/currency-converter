# For storing currencies

class Currency
  def initialize(currency_code, amount)
    @currency_code = currency_code
    @amount = amount
  end

  def get currency_code # method to get currency code
    @currency_code
  end

  def get amount # method to get amount 
    @amount
  end
end
