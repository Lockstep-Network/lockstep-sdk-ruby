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
# @version    2022.4
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # View to return Payment Detail information for a given Invoice record.
    class InvoicePaymentDetailModel

        ##
        # Initialize the InvoicePaymentDetailModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @payment_applied_id = params.dig(:payment_applied_id)
            @invoice_id = params.dig(:invoice_id)
            @payment_id = params.dig(:payment_id)
            @apply_to_invoice_date = params.dig(:apply_to_invoice_date)
            @payment_applied_amount = params.dig(:payment_applied_amount)
            @reference_code = params.dig(:reference_code)
            @company_id = params.dig(:company_id)
            @payment_amount = params.dig(:payment_amount)
            @unapplied_amount = params.dig(:unapplied_amount)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The unique identifier of this PaymentApplied record.
        attr_accessor :payment_applied_id

        ##
        # @return [Uuid] The database id of the invoice
        attr_accessor :invoice_id

        ##
        # @return [Uuid] The database id of the Payment.
        attr_accessor :payment_id

        ##
        # @return [Date] Date Payment applied to Invoice.
        attr_accessor :apply_to_invoice_date

        ##
        # @return [Double] Amount applied to Invoice.
        attr_accessor :payment_applied_amount

        ##
        # @return [String] An additional reference code that is sometimes used to identify this Payment. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :reference_code

        ##
        # @return [Uuid] The ID number of the Company (CompanyType = "Customer") that created this Payment.
        attr_accessor :company_id

        ##
        # @return [Double] The total value of this Payment.
        attr_accessor :payment_amount

        ##
        # @return [Double] The remaining balance value of this Payment.
        attr_accessor :unapplied_amount

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'paymentAppliedId' => @payment_applied_id,
                'invoiceId' => @invoice_id,
                'paymentId' => @payment_id,
                'applyToInvoiceDate' => @apply_to_invoice_date,
                'paymentAppliedAmount' => @payment_applied_amount,
                'referenceCode' => @reference_code,
                'companyId' => @company_id,
                'paymentAmount' => @payment_amount,
                'unappliedAmount' => @unapplied_amount,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
