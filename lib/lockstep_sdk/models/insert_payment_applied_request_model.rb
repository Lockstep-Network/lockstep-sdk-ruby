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
    # A request to insert a payment application
    class InsertPaymentAppliedRequestModel

        ##
        # Initialize the InsertPaymentAppliedRequestModel using the provided prototype
        def initialize(params = {})
            @payment_applied_id = params.dig(:payment_applied_id)
            @invoice_id = params.dig(:invoice_id)
            @payment_id = params.dig(:payment_id)
            @erp_key = params.dig(:erp_key)
            @invoice_erp_key = params.dig(:invoice_erp_key)
            @apply_to_invoice_date = params.dig(:apply_to_invoice_date)
            @payment_applied_amount = params.dig(:payment_applied_amount)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :payment_applied_id

        ##
        # @return [Uuid] The Invoice this payment is applied to.
        attr_accessor :invoice_id

        ##
        # @return [Uuid] The Payment this application applies from.
        attr_accessor :payment_id

        ##
        # @return [String] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] The ERP key of the Invoice this payment is applied to.
        attr_accessor :invoice_erp_key

        ##
        # @return [Date-time] The date this payment was applied to this invoice.
        attr_accessor :apply_to_invoice_date

        ##
        # @return [Double] The total amount that was applied to this Invoice from the Payment.
        attr_accessor :payment_applied_amount

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'paymentAppliedId' => @payment_applied_id,
                'invoiceId' => @invoice_id,
                'paymentId' => @payment_id,
                'erpKey' => @erp_key,
                'invoiceErpKey' => @invoice_erp_key,
                'applyToInvoiceDate' => @apply_to_invoice_date,
                'paymentAppliedAmount' => @payment_applied_amount,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
