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
    class currencyModel
        # @return [string] Alphabetic code for the given currency
        attr_accessor :alpha_code
        # @return [string] Numeric code for the given currency
        attr_accessor :numeric_code
        # @return [string] Name of currency
        attr_accessor :currency_name
        # @return [int32] Number of places after the decimal for this currency
        attr_accessor :minor_unit
        # @return [string] Symbol for the given currency
        attr_accessor :symbol
    end
end
