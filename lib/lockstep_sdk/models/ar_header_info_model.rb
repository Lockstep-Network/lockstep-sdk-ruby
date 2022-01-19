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
    class ArHeaderInfoModel

        # Initialize the ArHeaderInfoModel using the provided prototype
        def initialize(params = {})
            @group_key = params.fetch(:group_key)
            @report_period = params.fetch(:report_period)
            @total_customers = params.fetch(:total_customers)
            @total_invoices = params.fetch(:total_invoices)
            @total_invoiced_amount = params.fetch(:total_invoiced_amount)
            @total_unapplied_payments = params.fetch(:total_unapplied_payments)
            @total_collected = params.fetch(:total_collected)
            @total_ar_amount = params.fetch(:total_ar_amount)
            @total_invoices_paid = params.fetch(:total_invoices_paid)
            @total_invoices_past_due = params.fetch(:total_invoices_past_due)
            @total_invoices90_days_past_due = params.fetch(:total_invoices90_days_past_due)
            @total_past_due_amount = params.fetch(:total_past_due_amount)
            @total_past_due_amount90_days = params.fetch(:total_past_due_amount90_days)
            @percentage_of_total_ar = params.fetch(:percentage_of_total_ar)
            @dso = params.fetch(:dso)
            @total_invoice_amount_current_year = params.fetch(:total_invoice_amount_current_year)
            @total_invoice_amount_previous_year = params.fetch(:total_invoice_amount_previous_year)
            @total_payment_amount_current_year = params.fetch(:total_payment_amount_current_year)
            @total_collected_past_thirty_days = params.fetch(:total_collected_past_thirty_days)
            @total_invoices_paid_past_thirty_days = params.fetch(:total_invoices_paid_past_thirty_days)
            @percentage_of_total_ar90_days_past_due = params.fetch(:percentage_of_total_ar90_days_past_due)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Date] The date of the report
        attr_accessor :report_period
        # @return [Int32] The total number of customers.
        attr_accessor :total_customers
        # @return [Int32] The total number of invoices.
        attr_accessor :total_invoices
        # @return [Double] The total amount invoiced.
        attr_accessor :total_invoiced_amount
        # @return [Double] The total number of unapplied payments.
        attr_accessor :total_unapplied_payments
        # @return [Double] The total amount of collected payments.
        attr_accessor :total_collected
        # @return [Double] The total accounts receivable amount.
        attr_accessor :total_ar_amount
        # @return [Int32] The number of paid invoices.
        attr_accessor :total_invoices_paid
        # @return [Int32] The number of past due invoices.
        attr_accessor :total_invoices_past_due
        # @return [Int32] The number of past due invoices for the last 90 days.
        attr_accessor :total_invoices90_days_past_due
        # @return [Double] The total amount past due.
        attr_accessor :total_past_due_amount
        # @return [Double] The total past due for the past 90 days.
        attr_accessor :total_past_due_amount90_days
        # @return [Double] Portion of Total AR that is Past due.
        attr_accessor :percentage_of_total_ar
        # @return [Double] Daily sales outstanding.
        attr_accessor :dso
        # @return [Double] The total amount invoiced, due this year.
        attr_accessor :total_invoice_amount_current_year
        # @return [Double] The total amount invoiced, due last year.
        attr_accessor :total_invoice_amount_previous_year
        # @return [Double] The total of all payments received this year.
        attr_accessor :total_payment_amount_current_year
        # @return [Int32] The total amount of payments received in the last 30 days
        attr_accessor :total_collected_past_thirty_days
        # @return [Int32] The total amount of Invoices paid in the last 30 days
        attr_accessor :total_invoices_paid_past_thirty_days
        # @return [Double] Portion of Total AR that is 90+ days Past due.
        attr_accessor :percentage_of_total_ar90_days_past_due
    end
end
