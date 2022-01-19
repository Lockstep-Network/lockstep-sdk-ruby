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

    # Represents the daily sales outstanding report
    class dailySalesOutstandingReportModel
        # @return [date-time] Timeframe (month) the daily sales outstanding values are associated with
        attr_accessor :timeframe
        # @return [int32] Number of invoices the average daily sales outstanding is calculated on
        attr_accessor :invoice_count
        # @return [double] Time (in days) between an invoice was completed paid off and when the invoice was issued
        attr_accessor :daily_sales_outstanding
    end
end
