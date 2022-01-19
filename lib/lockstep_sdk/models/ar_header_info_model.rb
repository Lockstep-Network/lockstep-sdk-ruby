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

    # Aggregated Accounts Receivable information.
    class arHeaderInfoModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [date] The date of the report
        attr_accessor :report_period
        # @return [int32] The total number of customers.
        attr_accessor :total_customers
        # @return [int32] The total number of invoices.
        attr_accessor :total_invoices
        # @return [double] The total amount invoiced.
        attr_accessor :total_invoiced_amount
        # @return [double] The total number of unapplied payments.
        attr_accessor :total_unapplied_payments
        # @return [double] The total amount of collected payments.
        attr_accessor :total_collected
        # @return [double] The total accounts receivable amount.
        attr_accessor :total_ar_amount
        # @return [int32] The number of paid invoices.
        attr_accessor :total_invoices_paid
        # @return [int32] The number of past due invoices.
        attr_accessor :total_invoices_past_due
        # @return [int32] The number of past due invoices for the last 90 days.
        attr_accessor :total_invoices90_days_past_due
        # @return [double] The total amount past due.
        attr_accessor :total_past_due_amount
        # @return [double] The total past due for the past 90 days.
        attr_accessor :total_past_due_amount90_days
        # @return [double] Portion of Total AR that is Past due.
        attr_accessor :percentage_of_total_ar
        # @return [double] Daily sales outstanding.
        attr_accessor :dso
        # @return [double] The total amount invoiced, due this year.
        attr_accessor :total_invoice_amount_current_year
        # @return [double] The total amount invoiced, due last year.
        attr_accessor :total_invoice_amount_previous_year
        # @return [double] The total of all payments received this year.
        attr_accessor :total_payment_amount_current_year
        # @return [int32] The total amount of payments received in the last 30 days
        attr_accessor :total_collected_past_thirty_days
        # @return [int32] The total amount of Invoices paid in the last 30 days
        attr_accessor :total_invoices_paid_past_thirty_days
        # @return [double] Portion of Total AR that is 90+ days Past due.
        attr_accessor :percentage_of_total_ar90_days_past_due
    end
end
