#start, converting currencies
#0.021 PHP to USD
require_relative 'class_currency.rb'

class Currencyconverter
    def initialize(currency_rates)
        @conversion_rate = currency_rates
    end
