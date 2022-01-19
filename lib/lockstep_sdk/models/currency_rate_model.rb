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

    # Represents a currency rate for specific currencies and date
    class currencyRateModel
        # @return [string] The source currency
        attr_accessor :source_currency
        # @return [string] The destination currency
        attr_accessor :destination_currency
        # @return [date] The date for the currency rate
        attr_accessor :date
        # @return [double] The currency rate value
        attr_accessor :currency_rate
    end
end
