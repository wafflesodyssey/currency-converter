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

  def add(add_code, add_amount)
    if @currency_code == add_code
      @amount += add_amount
    else
      puts 'Different Currency Code Error'
    end
  end

  def subtract(subtract_code, subtract_amount)
    if @currency_code == subtract_code
      @amount -= subtract_amount
    else
      puts 'Different Currency Code Error'
    end
  end

  def multiply(number)
    Currency.new(@currency_code, @amount * number)
  end
end
