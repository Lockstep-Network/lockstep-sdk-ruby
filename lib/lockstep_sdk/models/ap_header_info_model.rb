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
    # Aggregated Accounts Payable information.
    class ApHeaderInfoModel

        ##
        # Initialize the ApHeaderInfoModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @base_currency_code = params.dig(:base_currency_code)
            @report_date = params.dig(:report_date)
            @report_period = params.dig(:report_period)
            @total_vendors = params.dig(:total_vendors)
            @total_bills = params.dig(:total_bills)
            @total_billed_amount = params.dig(:total_billed_amount)
            @total_advance_payments = params.dig(:total_advance_payments)
            @total_paid = params.dig(:total_paid)
            @total_ap_amount = params.dig(:total_ap_amount)
            @total_bills_paid = params.dig(:total_bills_paid)
            @total_bills_past_due = params.dig(:total_bills_past_due)
            @total_bills90_days_past_due = params.dig(:total_bills90_days_past_due)
            @total_past_due_amount = params.dig(:total_past_due_amount)
            @total_past_due_amount90_days = params.dig(:total_past_due_amount90_days)
            @percentage_of_total_ap = params.dig(:percentage_of_total_ap)
            @total_billed_amount_current_year = params.dig(:total_billed_amount_current_year)
            @total_billed_amount_previous_year = params.dig(:total_billed_amount_previous_year)
            @total_paid_amount_current_year = params.dig(:total_paid_amount_current_year)
            @percentage_of_total_ap90_days_past_due = params.dig(:percentage_of_total_ap90_days_past_due)
            @vendors_paid_past_thirty_days = params.dig(:vendors_paid_past_thirty_days)
            @amount_paid_past_thirty_days = params.dig(:amount_paid_past_thirty_days)
            @advance_payment_amount_past_thirty_days = params.dig(:advance_payment_amount_past_thirty_days)
            @bills_paid_past_thirty_days = params.dig(:bills_paid_past_thirty_days)
            @billing_vendors_past_thirty_days = params.dig(:billing_vendors_past_thirty_days)
            @amount_billed_past_thirty_days = params.dig(:amount_billed_past_thirty_days)
            @amount_due_past_thirty_days = params.dig(:amount_due_past_thirty_days)
            @bills_past_thirty_days = params.dig(:bills_past_thirty_days)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The base currency code of the group account
        attr_accessor :base_currency_code

        ##
        # @return [Date-time] The date of the report
        attr_accessor :report_date

        ##
        # @return [Date-time] The date of the report
        attr_accessor :report_period

        ##
        # @return [Int32] The total number of vendors.
        attr_accessor :total_vendors

        ##
        # @return [Int32] The total number of bills.
        attr_accessor :total_bills

        ##
        # @return [Double] The total amount billed.
        attr_accessor :total_billed_amount

        ##
        # @return [Double] The total number of advance payments.
        attr_accessor :total_advance_payments

        ##
        # @return [Double] The total amount paid.
        attr_accessor :total_paid

        ##
        # @return [Double] The total accounts payable amount.
        attr_accessor :total_ap_amount

        ##
        # @return [Int32] The number of paid bills.
        attr_accessor :total_bills_paid

        ##
        # @return [Int32] The number of past due bills.
        attr_accessor :total_bills_past_due

        ##
        # @return [Int32] The number of bills 90+ days past due.
        attr_accessor :total_bills90_days_past_due

        ##
        # @return [Double] The total amount past due.
        attr_accessor :total_past_due_amount

        ##
        # @return [Double] The total amount for bills 90+ days past due.
        attr_accessor :total_past_due_amount90_days

        ##
        # @return [Double] Portion of Total AP that is Past due.
        attr_accessor :percentage_of_total_ap

        ##
        # @return [Double] The total amount billed, due this year.
        attr_accessor :total_billed_amount_current_year

        ##
        # @return [Double] The total amount billed, due last year.
        attr_accessor :total_billed_amount_previous_year

        ##
        # @return [Double] The total of all payments made this year.
        attr_accessor :total_paid_amount_current_year

        ##
        # @return [Double] Portion of Total AP that is 90+ days Past due.
        attr_accessor :percentage_of_total_ap90_days_past_due

        ##
        # @return [Int32] The number of vendors who were paid within the past thirty days.
        attr_accessor :vendors_paid_past_thirty_days

        ##
        # @return [Double] The total amount paid over the past thirty days.
        attr_accessor :amount_paid_past_thirty_days

        ##
        # @return [Double] The amount in advance from the payments made over the past thirty days.
        attr_accessor :advance_payment_amount_past_thirty_days

        ##
        # @return [Int32] The number of bills paid over the past thirty days.
        attr_accessor :bills_paid_past_thirty_days

        ##
        # @return [Int32] The number of vendors that sent bills over the the past thirty days.
        attr_accessor :billing_vendors_past_thirty_days

        ##
        # @return [Double] The total amount billed over the past thirty days.
        attr_accessor :amount_billed_past_thirty_days

        ##
        # @return [Double] The amount outstanding on the bills received over the past thirty days.
        attr_accessor :amount_due_past_thirty_days

        ##
        # @return [Int32] The number of bills received over the past thirty days.
        attr_accessor :bills_past_thirty_days

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'baseCurrencyCode' => @base_currency_code,
                'reportDate' => @report_date,
                'reportPeriod' => @report_period,
                'totalVendors' => @total_vendors,
                'totalBills' => @total_bills,
                'totalBilledAmount' => @total_billed_amount,
                'totalAdvancePayments' => @total_advance_payments,
                'totalPaid' => @total_paid,
                'totalApAmount' => @total_ap_amount,
                'totalBillsPaid' => @total_bills_paid,
                'totalBillsPastDue' => @total_bills_past_due,
                'totalBills90DaysPastDue' => @total_bills90_days_past_due,
                'totalPastDueAmount' => @total_past_due_amount,
                'totalPastDueAmount90Days' => @total_past_due_amount90_days,
                'percentageOfTotalAp' => @percentage_of_total_ap,
                'totalBilledAmountCurrentYear' => @total_billed_amount_current_year,
                'totalBilledAmountPreviousYear' => @total_billed_amount_previous_year,
                'totalPaidAmountCurrentYear' => @total_paid_amount_current_year,
                'percentageOfTotalAp90DaysPastDue' => @percentage_of_total_ap90_days_past_due,
                'vendorsPaidPastThirtyDays' => @vendors_paid_past_thirty_days,
                'amountPaidPastThirtyDays' => @amount_paid_past_thirty_days,
                'advancePaymentAmountPastThirtyDays' => @advance_payment_amount_past_thirty_days,
                'billsPaidPastThirtyDays' => @bills_paid_past_thirty_days,
                'billingVendorsPastThirtyDays' => @billing_vendors_past_thirty_days,
                'amountBilledPastThirtyDays' => @amount_billed_past_thirty_days,
                'amountDuePastThirtyDays' => @amount_due_past_thirty_days,
                'billsPastThirtyDays' => @bills_past_thirty_days,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
