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

    # Represents a risk rate calculation for a single month
    class riskRateModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [date-time] The month the risk rate was calculated for
        attr_accessor :report_period
        # @return [string] The string name of the month the risk rate was calculated for
        attr_accessor :invoice_month_name
        # @return [int32] The count of all invoices in the calculation month
        attr_accessor :total_invoice_count
        # @return [double] The sum of the total amount for invoices in the calculation month
        attr_accessor :total_invoice_amount
        # @return [int32] The count of open invoices over 90 days from the calculation month
        attr_accessor :at_risk_count
        # @return [double] The sum of the outstanding balance of open invoices over 90 days from the calculation month
        attr_accessor :at_risk_amount
        # @return [double] The percentage of all open invoices for the calculation month that are over 90 days based on count
        attr_accessor :at_risk_count_percentage
        # @return [double] The percentage of all open invoices for the calculation month that are over 90 days based on outstanding balance
        attr_accessor :at_risk_percentage
    end
end
