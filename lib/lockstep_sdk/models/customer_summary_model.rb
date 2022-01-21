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
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    # Contains summarized data for a customer
    class CustomerSummaryModel

        # Initialize the CustomerSummaryModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @company_id = params.dig(:company_id)
            @company_name = params.dig(:company_name)
            @primary_contact = params.dig(:primary_contact)
            @outstanding_invoices = params.dig(:outstanding_invoices)
            @total_invoices_open = params.dig(:total_invoices_open)
            @total_invoices_past_due = params.dig(:total_invoices_past_due)
            @closed_invoices = params.dig(:closed_invoices)
            @amount_collected = params.dig(:amount_collected)
            @outstanding_amount = params.dig(:outstanding_amount)
            @amount_past_due = params.dig(:amount_past_due)
            @unapplied_payments = params.dig(:unapplied_payments)
            @percent_of_total_ar = params.dig(:percent_of_total_ar)
            @dso = params.dig(:dso)
            @newest_activity = params.dig(:newest_activity)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The unique ID of this company.
        attr_accessor :company_id
        # @return [String] The name of the company.
        attr_accessor :company_name
        # @return [String] The name of the primary contact.
        attr_accessor :primary_contact
        # @return [Int32] The number of outstanding invoices for this customer.
        attr_accessor :outstanding_invoices
        # @return [Int32] The number of open invoices.
        attr_accessor :total_invoices_open
        # @return [Int32] The number of past due invoices.
        attr_accessor :total_invoices_past_due
        # @return [Int32] The number of closed invoices for this customer.
        attr_accessor :closed_invoices
        # @return [Double] The total from collected payments.
        attr_accessor :amount_collected
        # @return [Double] The total balance of outstanding invoices.
        attr_accessor :outstanding_amount
        # @return [Double] The total amount past due for this customer.
        attr_accessor :amount_past_due
        # @return [Double] The total value of unapplied Payments for this Customer.
        attr_accessor :unapplied_payments
        # @return [Double] Portion of Total AR for this Customer that is Past due. (TotalPastDue / Total AR).
        attr_accessor :percent_of_total_ar
        # @return [Double] Daily sales outstanding value for this Customer.
        attr_accessor :dso
        # @return [Date] The date stamp for the newest Activity on this Customer.
        attr_accessor :newest_activity

        def as_json(options={})
            {
                'groupKey' => @group_key,
                'companyId' => @company_id,
                'companyName' => @company_name,
                'primaryContact' => @primary_contact,
                'outstandingInvoices' => @outstanding_invoices,
                'totalInvoicesOpen' => @total_invoices_open,
                'totalInvoicesPastDue' => @total_invoices_past_due,
                'closedInvoices' => @closed_invoices,
                'amountCollected' => @amount_collected,
                'outstandingAmount' => @outstanding_amount,
                'amountPastDue' => @amount_past_due,
                'unappliedPayments' => @unapplied_payments,
                'percentOfTotalAr' => @percent_of_total_ar,
                'dso' => @dso,
                'newestActivity' => @newest_activity,
            }
        end

        def to_json(*options)
            [#{as_json(*options).to_json(*options)}]
        end
    end
end
