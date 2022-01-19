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

    # Contains information about a credit memo invoice
    class creditMemoInvoiceModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :credit_memo_applied_id
        # @return [uuid] The id of the invoice
        attr_accessor :invoice_id
        # @return [uuid] The id of the credit memo invoice
        attr_accessor :credit_memo_invoice_id
        # @return [date] Date invoice applied to credit memo.
        attr_accessor :apply_to_invoice_date
        # @return [double] Amount applied to credit memo.
        attr_accessor :credit_memo_applied_amount
        # @return [string] An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :reference_code
        # @return [uuid] The ID number of the company that created this invoice.
        attr_accessor :company_id
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_id
        # @return [string] A code identifying the status of this invoice.
        attr_accessor :invoice_status_code
        # @return [double] The total value of this invoice, inclusive of all taxes and line items.
        attr_accessor :total_amount
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstanding_balance_amount
    end
end
