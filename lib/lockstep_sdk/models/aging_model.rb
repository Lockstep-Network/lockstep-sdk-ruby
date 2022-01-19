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

    # Represents an aging record
    class AgingModel

        # Initialize the AgingModel using the provided prototype
        def initialize(params = {})
            @bucket = params.fetch(:bucket)
            @currency_code = params.fetch(:currency_code)
            @outstanding_balance = params.fetch(:outstanding_balance)
        end

        # @return [Int32] Aging bucket of outstanding balance data (days past due date of invoice)
        attr_accessor :bucket
        # @return [String] Currency code of aging bucket
        attr_accessor :currency_code
        # @return [Double] Outstanding balance for the given aging bucket
        attr_accessor :outstanding_balance
    end
end
