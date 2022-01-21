#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayan B S <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    # Represents a currency rate for specific currencies and date
    class CurrencyRateModel

        # Initialize the CurrencyRateModel using the provided prototype
        def initialize(params = {})
            @source_currency = params.dig(:source_currency)
            @destination_currency = params.dig(:destination_currency)
            @date = params.dig(:date)
            @currency_rate = params.dig(:currency_rate)
        end

        # @return [String] The source currency
        attr_accessor :source_currency
        # @return [String] The destination currency
        attr_accessor :destination_currency
        # @return [Date] The date for the currency rate
        attr_accessor :date
        # @return [Double] The currency rate value
        attr_accessor :currency_rate

        def as_json(options={})
            {
                'sourceCurrency' => @source_currency,
                'destinationCurrency' => @destination_currency,
                'date' => @date,
                'currencyRate' => @currency_rate,
            }
        end

        def to_json(*options)
            [#{as_json(*options).to_json(*options)}]
        end
    end
end
