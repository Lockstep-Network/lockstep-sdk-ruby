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
    # Represents the daily payable outstanding report
    class DailyPayableOutstandingReportModel

        ##
        # Initialize the DailyPayableOutstandingReportModel using the provided prototype
        def initialize(params = {})
            @timeframe = params.dig(:timeframe)
            @invoice_count = params.dig(:invoice_count)
            @daily_payable_outstanding = params.dig(:daily_payable_outstanding)
        end

        ##
        # @return [Date-time] Timeframe (quarter) the daily payable outstanding values are associated with
        attr_accessor :timeframe

        ##
        # @return [Int32] Number of invoices the average daily payable outstanding is calculated on
        attr_accessor :invoice_count

        ##
        # @return [Double] Time (in days) between an invoice was completed paid off and when the invoice was issued
        attr_accessor :daily_payable_outstanding

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'timeframe' => @timeframe,
                'invoiceCount' => @invoice_count,
                'dailyPayableOutstanding' => @daily_payable_outstanding,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
