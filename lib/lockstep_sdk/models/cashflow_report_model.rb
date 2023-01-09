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
    # Represents the cashflow report based on a timeframe
    class CashflowReportModel

        ##
        # Initialize the CashflowReportModel using the provided prototype
        def initialize(params = {})
            @timeframe = params.dig(:timeframe)
            @payments_collected = params.dig(:payments_collected)
            @payments_collected_count = params.dig(:payments_collected_count)
            @invoices_billed = params.dig(:invoices_billed)
            @invoices_billed_count = params.dig(:invoices_billed_count)
        end

        ##
        # @return [Int32] Timeframe in days the cashflow report is generated on
        attr_accessor :timeframe

        ##
        # @return [Double] Amount of payments collected based in the timeframe
        attr_accessor :payments_collected

        ##
        # @return [Int32] Number of payments collected based in the timeframe
        attr_accessor :payments_collected_count

        ##
        # @return [Double] Amount of invoices billed based in the timeframe
        attr_accessor :invoices_billed

        ##
        # @return [Int32] Number of invoices billed in the timeframe
        attr_accessor :invoices_billed_count

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'timeframe' => @timeframe,
                'paymentsCollected' => @payments_collected,
                'paymentsCollectedCount' => @payments_collected_count,
                'invoicesBilled' => @invoices_billed,
                'invoicesBilledCount' => @invoices_billed_count,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
