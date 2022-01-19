#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk

    # Represents an ISO-4217 currency code definition
    class CurrencyModel

        # Initialize the CurrencyModel using the provided prototype
        def initialize(params = {})
            @alpha_code = params.fetch(:alpha_code)
            @numeric_code = params.fetch(:numeric_code)
            @currency_name = params.fetch(:currency_name)
            @minor_unit = params.fetch(:minor_unit)
            @symbol = params.fetch(:symbol)
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
    end
end
