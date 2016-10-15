# For storing currencies

class Currency
  attr_reader :currency_code, :amount

  def initialize(currency_code, amount)
    @currency_code = currency_code
    @amount = amount.round(2)
  end

  def +(other)
    if other.currency_code == self.currency_code
      new_amount = @amount + other.amount
      Currency.new(@currency_code, new_amount)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(other)
    if other.currency_code == self.currency_code
      new_amount = @amount - other.amount
      Currency.new(@currency_code, new_amount)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def ==(other)
    self.currency_code == other.currency_code &&
      self.amount == other.amount
  end

  def *(number)
    Currency.new(@currency_code, @amount * number)
  end

  def to_s
    "#{@currency_code} #{@amount}"
  end
end

DifferentCurrencyCodeError = Class.new(StandardError)
