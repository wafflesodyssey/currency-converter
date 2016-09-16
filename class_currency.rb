# For storing currencies

class Currency
  def initialize(currency_code, amount)
    @currency_code = currency_code
    @amount = amount
  end

  def amount
    @amount
  end

  def currency_code
    @currency_code
  end

  def +(other)
    if other.currency_code == self.currency_code
      new_amount = @amount + other.amount
      Currency.new(@currency_code, new_amount)
    else
      puts 'Different Currency Code Error'
      raise
    end
  end

  def -(other)
    if other.currency_code == self.currency_code
      new_amount = @amount - other.amount
      Currency.new(@currency_code, new_amount)
    else
      puts 'Different Currency Code Error'
    end
  end

  def ==(other)
    self.currency_code == other.currency_code && self.amount == other.amount
  end

  def multiply(number)
    Currency.new(@currency_code, @amount * number)
  end

  def display
    puts "#{@currency_code} #{@amount}"
  end
end
