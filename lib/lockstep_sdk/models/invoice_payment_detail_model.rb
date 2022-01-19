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

    # View to return Payment Detail information for a given Invoice record.
    class invoicePaymentDetailModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique identifier of this PaymentApplied record.
        attr_accessor :payment_applied_id
        # @return [uuid] The database id of the invoice
        attr_accessor :invoice_id
        # @return [uuid] The database id of the Payment.
        attr_accessor :payment_id
        # @return [date] Date Payment applied to Invoice.
        attr_accessor :apply_to_invoice_date
        # @return [double] Amount applied to Invoice.
        attr_accessor :payment_applied_amount
        # @return [string] An additional reference code that is sometimes used to identify this Payment. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :reference_code
        # @return [uuid] The ID number of the Company (CompanyType = "Customer") that created this Payment.
        attr_accessor :company_id
        # @return [double] The total value of this Payment.
        attr_accessor :payment_amount
        # @return [double] The remaining balance value of this Payment.
        attr_accessor :unapplied_amount
    end
end
