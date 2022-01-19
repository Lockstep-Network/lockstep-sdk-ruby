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

    # Contains summarized data for a customer
    class CustomerSummaryModel

        # Initialize the CustomerSummaryModel using the provided prototype
        def initialize(params = {})
            @group_key = params.fetch(:group_key)
            @company_id = params.fetch(:company_id)
            @company_name = params.fetch(:company_name)
            @primary_contact = params.fetch(:primary_contact)
            @outstanding_invoices = params.fetch(:outstanding_invoices)
            @total_invoices_open = params.fetch(:total_invoices_open)
            @total_invoices_past_due = params.fetch(:total_invoices_past_due)
            @closed_invoices = params.fetch(:closed_invoices)
            @amount_collected = params.fetch(:amount_collected)
            @outstanding_amount = params.fetch(:outstanding_amount)
            @amount_past_due = params.fetch(:amount_past_due)
            @unapplied_payments = params.fetch(:unapplied_payments)
            @percent_of_total_ar = params.fetch(:percent_of_total_ar)
            @dso = params.fetch(:dso)
            @newest_activity = params.fetch(:newest_activity)
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
    end
end
