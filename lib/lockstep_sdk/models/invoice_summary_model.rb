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

    # Contains summarized data for an invoice
    class invoiceSummaryModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_id
        # @return [uuid] The unique ID number of this invoice.
        attr_accessor :invoice_id
        # @return [string] A reference code that is used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :invoice_number
        # @return [date] The reporting date for this invoice.
        attr_accessor :invoice_date
        # @return [string] The name of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_name
        # @return [string] The status of the invoice.
        attr_accessor :status
        # @return [date] The due date of the invoice.
        attr_accessor :payment_due_date
        # @return [double] The total amount of the Invoice.
        attr_accessor :invoice_amount
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstanding_balance
        # @return [string] A code identifying the type of this Invoice.
        attr_accessor :invoice_type_code
        # @return [date] The date stamp for the newest Activity on this Invoice.
        attr_accessor :newest_activity
        # @return [int32] The number of days this Invoice is past due.
        attr_accessor :days_past_due
        # @return [string] The memo text of the payments associated to this invoice.
        attr_accessor :payment_numbers
        # @return [uuid] The ids of the payments associated to this invoice.
        attr_accessor :payment_ids
    end
end
