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
    class InvoicePaymentDetailModel

        # Initialize the InvoicePaymentDetailModel using the provided prototype
        def initialize(params = {})
            @group_key = params.fetch(:group_key)
            @payment_applied_id = params.fetch(:payment_applied_id)
            @invoice_id = params.fetch(:invoice_id)
            @payment_id = params.fetch(:payment_id)
            @apply_to_invoice_date = params.fetch(:apply_to_invoice_date)
            @payment_applied_amount = params.fetch(:payment_applied_amount)
            @reference_code = params.fetch(:reference_code)
            @company_id = params.fetch(:company_id)
            @payment_amount = params.fetch(:payment_amount)
            @unapplied_amount = params.fetch(:unapplied_amount)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The unique identifier of this PaymentApplied record.
        attr_accessor :payment_applied_id
        # @return [Uuid] The database id of the invoice
        attr_accessor :invoice_id
        # @return [Uuid] The database id of the Payment.
        attr_accessor :payment_id
        # @return [Date] Date Payment applied to Invoice.
        attr_accessor :apply_to_invoice_date
        # @return [Double] Amount applied to Invoice.
        attr_accessor :payment_applied_amount
        # @return [String] An additional reference code that is sometimes used to identify this Payment. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :reference_code
        # @return [Uuid] The ID number of the Company (CompanyType = "Customer") that created this Payment.
        attr_accessor :company_id
        # @return [Double] The total value of this Payment.
        attr_accessor :payment_amount
        # @return [Double] The remaining balance value of this Payment.
        attr_accessor :unapplied_amount
    end
end
