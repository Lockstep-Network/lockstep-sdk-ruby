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

    # Input format used for bulk conversion route
    class BulkCurrencyConversionModel

        # Initialize the BulkCurrencyConversionModel using the provided prototype
        def initialize(params = {})
            @date = params.fetch(:date)
            @source_currency = params.fetch(:source_currency)
        end

        # @return [Date] The date for the currency rate
        attr_accessor :date
        # @return [String] The currency code This will be validated by the /api/v1/currencies data set
        attr_accessor :source_currency
    end
end
