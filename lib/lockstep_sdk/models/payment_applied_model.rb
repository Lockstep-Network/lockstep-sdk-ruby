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

    # A Payment Application is created by a business who receives a Payment from a customer.  A customer may make
    # a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be
    # made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected
    # to which Payments and for which amounts.
    class PaymentAppliedModel

        # Initialize the PaymentAppliedModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @payment_applied_id = params.dig(:payment_applied_id)
            @invoice_id = params.dig(:invoice_id)
            @payment_id = params.dig(:payment_id)
            @erp_key = params.dig(:erp_key)
            @entry_number = params.dig(:entry_number)
            @apply_to_invoice_date = params.dig(:apply_to_invoice_date)
            @payment_applied_amount = params.dig(:payment_applied_amount)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @invoice = params.dig(:invoice)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :payment_applied_id
        # @return [Uuid] The Invoice this payment is applied to.
        attr_accessor :invoice_id
        # @return [Uuid] The Payment applied to the invoice.
        attr_accessor :payment_id
        # @return [String] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [Int32] Reference number for the payment applied.
        attr_accessor :entry_number
        # @return [Date-time] Date payment applied to invoice.
        attr_accessor :apply_to_invoice_date
        # @return [Double] Amount applied to invoice.
        attr_accessor :payment_applied_amount
        # @return [Date-time] Date payment applied record was created.
        attr_accessor :created
        # @return [Uuid] The id of the user who created this applied payment.
        attr_accessor :created_user_id
        # @return [Date-time] Date payment applied record was modified.
        attr_accessor :modified
        # @return [Uuid] The id of the user who modified this applied payment.
        attr_accessor :modified_user_id
        # @return [Uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [InvoiceModel] The invoice associated with this applied payment.
        attr_accessor :invoice

        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'paymentAppliedId' => @payment_applied_id,
                'invoiceId' => @invoice_id,
                'paymentId' => @payment_id,
                'erpKey' => @erp_key,
                'entryNumber' => @entry_number,
                'applyToInvoiceDate' => @apply_to_invoice_date,
                'paymentAppliedAmount' => @payment_applied_amount,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'appEnrollmentId' => @app_enrollment_id,
                'invoice' => @invoice,
            }
        end

        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
