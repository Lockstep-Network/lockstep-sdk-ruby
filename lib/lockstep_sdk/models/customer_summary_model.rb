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
    # Contains summarized data for a customer
    class CustomerSummaryModel

        ##
        # Initialize the CustomerSummaryModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @company_id = params.dig(:company_id)
            @company_name = params.dig(:company_name)
            @primary_contact = params.dig(:primary_contact)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @outstanding_invoices = params.dig(:outstanding_invoices)
            @total_invoices_open = params.dig(:total_invoices_open)
            @total_invoices_past_due = params.dig(:total_invoices_past_due)
            @closed_invoices = params.dig(:closed_invoices)
            @closed_invoices_past_thirty_days = params.dig(:closed_invoices_past_thirty_days)
            @amount_collected = params.dig(:amount_collected)
            @amount_collected_past_thirty_days = params.dig(:amount_collected_past_thirty_days)
            @outstanding_amount = params.dig(:outstanding_amount)
            @invoiced_amount_past_thirty_days = params.dig(:invoiced_amount_past_thirty_days)
            @outstanding_amount_past_thirty_days = params.dig(:outstanding_amount_past_thirty_days)
            @invoices_past_thirty_days = params.dig(:invoices_past_thirty_days)
            @amount_past_due = params.dig(:amount_past_due)
            @unapplied_payments = params.dig(:unapplied_payments)
            @unapplied_amount_past_thirty_days = params.dig(:unapplied_amount_past_thirty_days)
            @percent_of_total_ar = params.dig(:percent_of_total_ar)
            @dso = params.dig(:dso)
            @newest_activity = params.dig(:newest_activity)
            @modified = params.dig(:modified)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The unique ID of this company.
        attr_accessor :company_id

        ##
        # @return [String] The name of the company.
        attr_accessor :company_name

        ##
        # @return [String] The name of the primary contact.
        attr_accessor :primary_contact

        ##
        # @return [Uuid] The app enrollment ID this Customer is associated with
        attr_accessor :app_enrollment_id

        ##
        # @return [Int32] The number of outstanding invoices for this customer.
        attr_accessor :outstanding_invoices

        ##
        # @return [Int32] The number of open invoices.
        attr_accessor :total_invoices_open

        ##
        # @return [Int32] The number of past due invoices.
        attr_accessor :total_invoices_past_due

        ##
        # @return [Int32] The number of closed invoices for this customer.
        attr_accessor :closed_invoices

        ##
        # @return [Int32] The number of closed invoices for this customer in the past thirty days.
        attr_accessor :closed_invoices_past_thirty_days

        ##
        # @return [Double] The total from collected payments.
        attr_accessor :amount_collected

        ##
        # @return [Double] The total from collected payments in the past thirty days.
        attr_accessor :amount_collected_past_thirty_days

        ##
        # @return [Double] The total balance of outstanding invoices.
        attr_accessor :outstanding_amount

        ##
        # @return [Double] The total amount invoiced in the past thirty days.
        attr_accessor :invoiced_amount_past_thirty_days

        ##
        # @return [Double] The total amount outstanding from the invoices invoiced in the past thirty days.
        attr_accessor :outstanding_amount_past_thirty_days

        ##
        # @return [Int32] The number of invoices invoiced in the past thirty days.
        attr_accessor :invoices_past_thirty_days

        ##
        # @return [Double] The total amount past due for this customer.
        attr_accessor :amount_past_due

        ##
        # @return [Double] The total value of unapplied Payments for this Customer.
        attr_accessor :unapplied_payments

        ##
        # @return [Double] The total value of unapplied Payments for this Customer in the past thirty days.
        attr_accessor :unapplied_amount_past_thirty_days

        ##
        # @return [Double] Portion of Total AR for this Customer that is Past due. (TotalPastDue / Total AR).
        attr_accessor :percent_of_total_ar

        ##
        # @return [Double] Daily sales outstanding value for this Customer.
        attr_accessor :dso

        ##
        # @return [Date] The date stamp for the newest Activity on this Customer.
        attr_accessor :newest_activity

        ##
        # @return [Date-time] The modified date of the customer.
        attr_accessor :modified

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'companyId' => @company_id,
                'companyName' => @company_name,
                'primaryContact' => @primary_contact,
                'appEnrollmentId' => @app_enrollment_id,
                'outstandingInvoices' => @outstanding_invoices,
                'totalInvoicesOpen' => @total_invoices_open,
                'totalInvoicesPastDue' => @total_invoices_past_due,
                'closedInvoices' => @closed_invoices,
                'closedInvoicesPastThirtyDays' => @closed_invoices_past_thirty_days,
                'amountCollected' => @amount_collected,
                'amountCollectedPastThirtyDays' => @amount_collected_past_thirty_days,
                'outstandingAmount' => @outstanding_amount,
                'invoicedAmountPastThirtyDays' => @invoiced_amount_past_thirty_days,
                'outstandingAmountPastThirtyDays' => @outstanding_amount_past_thirty_days,
                'invoicesPastThirtyDays' => @invoices_past_thirty_days,
                'amountPastDue' => @amount_past_due,
                'unappliedPayments' => @unapplied_payments,
                'unappliedAmountPastThirtyDays' => @unapplied_amount_past_thirty_days,
                'percentOfTotalAr' => @percent_of_total_ar,
                'dso' => @dso,
                'newestActivity' => @newest_activity,
                'modified' => @modified,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
