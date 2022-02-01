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
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # Represents a risk rate calculation for a single month
    class RiskRateModel

        ##
        # Initialize the RiskRateModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @report_period = params.dig(:report_period)
            @invoice_month_name = params.dig(:invoice_month_name)
            @total_invoice_count = params.dig(:total_invoice_count)
            @total_invoice_amount = params.dig(:total_invoice_amount)
            @at_risk_count = params.dig(:at_risk_count)
            @at_risk_amount = params.dig(:at_risk_amount)
            @at_risk_count_percentage = params.dig(:at_risk_count_percentage)
            @at_risk_percentage = params.dig(:at_risk_percentage)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Date-time] The month the risk rate was calculated for
        attr_accessor :report_period

        ##
        # @return [String] The string name of the month the risk rate was calculated for
        attr_accessor :invoice_month_name

        ##
        # @return [Int32] The count of all invoices in the calculation month
        attr_accessor :total_invoice_count

        ##
        # @return [Double] The sum of the total amount for invoices in the calculation month
        attr_accessor :total_invoice_amount

        ##
        # @return [Int32] The count of open invoices over 90 days from the calculation month
        attr_accessor :at_risk_count

        ##
        # @return [Double] The sum of the outstanding balance of open invoices over 90 days from the calculation month
        attr_accessor :at_risk_amount

        ##
        # @return [Double] The percentage of all open invoices for the calculation month that are over 90 days based on count
        attr_accessor :at_risk_count_percentage

        ##
        # @return [Double] The percentage of all open invoices for the calculation month that are over 90 days based on outstanding balance
        attr_accessor :at_risk_percentage

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'reportPeriod' => @report_period,
                'invoiceMonthName' => @invoice_month_name,
                'totalInvoiceCount' => @total_invoice_count,
                'totalInvoiceAmount' => @total_invoice_amount,
                'atRiskCount' => @at_risk_count,
                'atRiskAmount' => @at_risk_amount,
                'atRiskCountPercentage' => @at_risk_count_percentage,
                'atRiskPercentage' => @at_risk_percentage,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
