#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # Represents the payables summary report based on a timeframe
    class PayablesSummaryReportModel

        ##
        # Initialize the PayablesSummaryReportModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @timeframe = params.dig(:timeframe)
            @total_payments_amount = params.dig(:total_payments_amount)
            @total_payments_count = params.dig(:total_payments_count)
            @total_amount_billed = params.dig(:total_amount_billed)
            @total_bills_count = params.dig(:total_bills_count)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Int32] Timeframe in days the payables summary report is generated on
        attr_accessor :timeframe

        ##
        # @return [Double] Amount of payments made based in the timeframe
        attr_accessor :total_payments_amount

        ##
        # @return [Int32] Number of payments made based in the timeframe
        attr_accessor :total_payments_count

        ##
        # @return [Double] Amount of bills received based in the timeframe
        attr_accessor :total_amount_billed

        ##
        # @return [Int32] Number of bills received in the timeframe
        attr_accessor :total_bills_count

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'timeframe' => @timeframe,
                'totalPaymentsAmount' => @total_payments_amount,
                'totalPaymentsCount' => @total_payments_count,
                'totalAmountBilled' => @total_amount_billed,
                'totalBillsCount' => @total_bills_count,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
