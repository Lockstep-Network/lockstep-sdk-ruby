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
    class customerSummaryModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this company.
        attr_accessor :company_id
        # @return [string] The name of the company.
        attr_accessor :company_name
        # @return [string] The name of the primary contact.
        attr_accessor :primary_contact
        # @return [int32] The number of outstanding invoices for this customer.
        attr_accessor :outstanding_invoices
        # @return [int32] The number of open invoices.
        attr_accessor :total_invoices_open
        # @return [int32] The number of past due invoices.
        attr_accessor :total_invoices_past_due
        # @return [int32] The number of closed invoices for this customer.
        attr_accessor :closed_invoices
        # @return [double] The total from collected payments.
        attr_accessor :amount_collected
        # @return [double] The total balance of outstanding invoices.
        attr_accessor :outstanding_amount
        # @return [double] The total amount past due for this customer.
        attr_accessor :amount_past_due
        # @return [double] The total value of unapplied Payments for this Customer.
        attr_accessor :unapplied_payments
        # @return [double] Portion of Total AR for this Customer that is Past due. (TotalPastDue / Total AR).
        attr_accessor :percent_of_total_ar
        # @return [double] Daily sales outstanding value for this Customer.
        attr_accessor :dso
        # @return [date] The date stamp for the newest Activity on this Customer.
        attr_accessor :newest_activity
    end
end
