require 'minitest/autorun'
require './class_currency'
require './standard_error'
require 'pry'
class CurrencyTest < Minitest::Test
  def test_the_truth
    assert true
  end

  #  Should be created with an amount and a currency code
  def test_can_be_created
    currency = Currency.new("USD", 1.0)

    assert_equal "USD", currency.currency_code
    assert_equal 1.0, currency.amount
  end

  #  Should equal another Currency object with the same amount and currency code
  def test_should_currency_of_same_amount_and_code
    currency1 = Currency.new("USD", 1.0)
    currency2 = Currency.new("USD", 1.0)
    assert_equal currency1, currency2
  end

  # Should NOT equal another Currency object with different amount or currency code
  def test_should_not_currency_of_same_amount_and_code
    currency1 = Currency.new("USD", 1.0)
    currency2 = Currency.new("USD", 5.0)
    refute_equal currency2, currency1
  end

  # Should be able to be added to another Currency object with the same currency code
  def test_should_be_able_to_be_added
    currency1 = Currency.new("USD", 1.0)
    currency2 = Currency.new("USD", 5.0)

    assert_equal Currency.new("USD", 6.0), currency1.+(currency2)
  end

  # Should be able to be subtracted by another Currency object with the same currency code

  def test_should_be_able_to_subtract
    currency1 = Currency.new("USD", 1.0)
    currency2 = Currency.new("USD", 5.0)
    assert_equal Currency.new("USD", 4.0), currency2.-(currency1)
  end

  # Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.

  def test_should_raise_an_error
    currency1 = Currency.new("USD", 1.0)
    currency2 = Currency.new("EUR", 5.0)

    assert_raises(Exception) { currency1.+(currency2) }
  end
end
