#storing currencies

class Currency
  def initialize (PHP, 0.021)
    @currencyCode = currencyCode
    @amount = amount
  end


  bank = Money::Bank::VariableExchange.new
  bank.add_rate("USD", "PHP", 1.00000)
  bank.add_rate("PHP", "USD", 47.23)


  b1 = Money.new(100_00, "USD")
  b2 = Money.new(100_00, "PHP")


  bank.exchange_with(b1, "PHP") #exchange 100 USD to PHP

  bank.exchange_with(b2, "USD") #exchange 100 PHP to USD


  
