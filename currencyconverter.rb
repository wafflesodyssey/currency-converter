#start, converting currencies
#0.021 PHP to USD
require_relative 'class_currency.rb'

class Currencyconverter
    def initialize(currency_rates)
        @conversion_rate = currency_rates
    end

    def convert(currency_to_convert, code_to_convert)
      call_value = currency_to_convert.get_amount * @conversion_rate.fetch(code_to_convert)
      Currency.new(code_to_convert, call_value)
    end
end
