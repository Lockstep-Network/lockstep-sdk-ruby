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
    # Aggregated Accounts Receivable information.
    class ArHeaderInfoModel

        ##
        # Initialize the ArHeaderInfoModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @base_currency_code = params.dig(:base_currency_code)
            @report_date = params.dig(:report_date)
            @report_period = params.dig(:report_period)
            @total_customers = params.dig(:total_customers)
            @total_invoices = params.dig(:total_invoices)
            @total_invoiced_amount = params.dig(:total_invoiced_amount)
            @total_unapplied_payments = params.dig(:total_unapplied_payments)
            @total_collected = params.dig(:total_collected)
            @total_ar_amount = params.dig(:total_ar_amount)
            @total_invoices_paid = params.dig(:total_invoices_paid)
            @total_invoices_past_due = params.dig(:total_invoices_past_due)
            @total_invoices90_days_past_due = params.dig(:total_invoices90_days_past_due)
            @total_past_due_amount = params.dig(:total_past_due_amount)
            @total_past_due_amount90_days = params.dig(:total_past_due_amount90_days)
            @percentage_of_total_ar = params.dig(:percentage_of_total_ar)
            @dso = params.dig(:dso)
            @total_invoice_amount_current_year = params.dig(:total_invoice_amount_current_year)
            @total_invoice_amount_previous_year = params.dig(:total_invoice_amount_previous_year)
            @total_payment_amount_current_year = params.dig(:total_payment_amount_current_year)
            @percentage_of_total_ar90_days_past_due = params.dig(:percentage_of_total_ar90_days_past_due)
            @customers_paid_past_thirty_days = params.dig(:customers_paid_past_thirty_days)
            @amount_collected_past_thirty_days = params.dig(:amount_collected_past_thirty_days)
            @unapplied_amount_past_thirty_days = params.dig(:unapplied_amount_past_thirty_days)
            @invoices_paid_past_thirty_days = params.dig(:invoices_paid_past_thirty_days)
            @customers_invoiced_past_thirty_days = params.dig(:customers_invoiced_past_thirty_days)
            @amount_invoiced_past_thirty_days = params.dig(:amount_invoiced_past_thirty_days)
            @amount_due_past_thirty_days = params.dig(:amount_due_past_thirty_days)
            @invoices_past_thirty_days = params.dig(:invoices_past_thirty_days)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The base currency code of the group account
        attr_accessor :base_currency_code

        ##
        # @return [Date] The date of the report
        attr_accessor :report_date

        ##
        # @return [String] The date of the report
        attr_accessor :report_period

        ##
        # @return [Int32] The total number of customers.
        attr_accessor :total_customers

        ##
        # @return [Int32] The total number of invoices.
        attr_accessor :total_invoices

        ##
        # @return [Double] The total amount invoiced.
        attr_accessor :total_invoiced_amount

        ##
        # @return [Double] The total number of unapplied payments.
        attr_accessor :total_unapplied_payments

        ##
        # @return [Double] The total amount of collected payments.
        attr_accessor :total_collected

        ##
        # @return [Double] The total accounts receivable amount.
        attr_accessor :total_ar_amount

        ##
        # @return [Int32] The number of paid invoices.
        attr_accessor :total_invoices_paid

        ##
        # @return [Int32] The number of past due invoices.
        attr_accessor :total_invoices_past_due

        ##
        # @return [Int32] The number of past due invoices for the last 90 days.
        attr_accessor :total_invoices90_days_past_due

        ##
        # @return [Double] The total amount past due.
        attr_accessor :total_past_due_amount

        ##
        # @return [Double] The total past due for the past 90 days.
        attr_accessor :total_past_due_amount90_days

        ##
        # @return [Double] Portion of Total AR that is Past due.
        attr_accessor :percentage_of_total_ar

        ##
        # @return [Double] Daily sales outstanding.
        attr_accessor :dso

        ##
        # @return [Double] The total amount invoiced, due this year.
        attr_accessor :total_invoice_amount_current_year

        ##
        # @return [Double] The total amount invoiced, due last year.
        attr_accessor :total_invoice_amount_previous_year

        ##
        # @return [Double] The total of all payments received this year.
        attr_accessor :total_payment_amount_current_year

        ##
        # @return [Double] Portion of Total AR that is 90+ days Past due.
        attr_accessor :percentage_of_total_ar90_days_past_due

        ##
        # @return [Int32] The number of customers who paid within the past thirty days.
        attr_accessor :customers_paid_past_thirty_days

        ##
        # @return [Double] The total amount collected over the past thirty days.
        attr_accessor :amount_collected_past_thirty_days

        ##
        # @return [Double] The amount unapplied from the payments collected over the past thirty days.
        attr_accessor :unapplied_amount_past_thirty_days

        ##
        # @return [Int32] The number of invoices paid over the past thirty days.
        attr_accessor :invoices_paid_past_thirty_days

        ##
        # @return [Int32] The number of customers invoiced over the the past thirty days.
        attr_accessor :customers_invoiced_past_thirty_days

        ##
        # @return [Double] The total amount invoiced over the past thirty days.
        attr_accessor :amount_invoiced_past_thirty_days

        ##
        # @return [Double] The amount outstanding on the invoices invoiced over the past thirty days.
        attr_accessor :amount_due_past_thirty_days

        ##
        # @return [Int32] The number of invoices invoiced over the past thirty days.
        attr_accessor :invoices_past_thirty_days

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'baseCurrencyCode' => @base_currency_code,
                'reportDate' => @report_date,
                'reportPeriod' => @report_period,
                'totalCustomers' => @total_customers,
                'totalInvoices' => @total_invoices,
                'totalInvoicedAmount' => @total_invoiced_amount,
                'totalUnappliedPayments' => @total_unapplied_payments,
                'totalCollected' => @total_collected,
                'totalArAmount' => @total_ar_amount,
                'totalInvoicesPaid' => @total_invoices_paid,
                'totalInvoicesPastDue' => @total_invoices_past_due,
                'totalInvoices90DaysPastDue' => @total_invoices90_days_past_due,
                'totalPastDueAmount' => @total_past_due_amount,
                'totalPastDueAmount90Days' => @total_past_due_amount90_days,
                'percentageOfTotalAr' => @percentage_of_total_ar,
                'dso' => @dso,
                'totalInvoiceAmountCurrentYear' => @total_invoice_amount_current_year,
                'totalInvoiceAmountPreviousYear' => @total_invoice_amount_previous_year,
                'totalPaymentAmountCurrentYear' => @total_payment_amount_current_year,
                'percentageOfTotalAr90DaysPastDue' => @percentage_of_total_ar90_days_past_due,
                'customersPaidPastThirtyDays' => @customers_paid_past_thirty_days,
                'amountCollectedPastThirtyDays' => @amount_collected_past_thirty_days,
                'unappliedAmountPastThirtyDays' => @unapplied_amount_past_thirty_days,
                'invoicesPaidPastThirtyDays' => @invoices_paid_past_thirty_days,
                'customersInvoicedPastThirtyDays' => @customers_invoiced_past_thirty_days,
                'amountInvoicedPastThirtyDays' => @amount_invoiced_past_thirty_days,
                'amountDuePastThirtyDays' => @amount_due_past_thirty_days,
                'invoicesPastThirtyDays' => @invoices_past_thirty_days,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
