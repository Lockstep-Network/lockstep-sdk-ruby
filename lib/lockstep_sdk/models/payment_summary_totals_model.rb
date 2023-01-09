#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2023 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2023 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # The totals for a Payment Summary
    class PaymentSummaryTotalsModel

        ##
        # Initialize the PaymentSummaryTotalsModel using the provided prototype
        def initialize(params = {})
            @total_paid_amount = params.dig(:total_paid_amount)
            @total_unapplied_balance = params.dig(:total_unapplied_balance)
        end

        ##
        # @return [Double] The total amount paid.
        attr_accessor :total_paid_amount

        ##
        # @return [Double] The total amount unapplied.
        attr_accessor :total_unapplied_balance

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'totalPaidAmount' => @total_paid_amount,
                'totalUnappliedBalance' => @total_unapplied_balance,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
