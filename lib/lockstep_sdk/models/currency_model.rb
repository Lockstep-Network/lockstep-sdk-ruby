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

    # Represents an ISO-4217 currency code definition
    class CurrencyModel

        # Initialize the CurrencyModel using the provided prototype
        def initialize(params = {})
            @alpha_code = params.dig(:alpha_code)
            @numeric_code = params.dig(:numeric_code)
            @currency_name = params.dig(:currency_name)
            @minor_unit = params.dig(:minor_unit)
            @symbol = params.dig(:symbol)
        end

        # @return [String] Alphabetic code for the given currency
        attr_accessor :alpha_code
        # @return [String] Numeric code for the given currency
        attr_accessor :numeric_code
        # @return [String] Name of currency
        attr_accessor :currency_name
        # @return [Int32] Number of places after the decimal for this currency
        attr_accessor :minor_unit
        # @return [String] Symbol for the given currency
        attr_accessor :symbol

        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'alphaCode' => @alpha_code,
                'numericCode' => @numeric_code,
                'currencyName' => @currency_name,
                'minorUnit' => @minor_unit,
                'symbol' => @symbol,
            }
        end

        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
