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
    # The PaymentAppliedSyncModel represents information coming into Lockstep from an external financial system or
    # other enterprise resource planning system.  To import data from an external system, convert your original data
    # into the PaymentAppliedSyncModel format and call the [Upload Sync File API](https://developer.lockstep.io/reference/post_api-v1-sync-zip).
    # This API retrieves all of the data you uploaded in a compressed ZIP file and imports it into the Lockstep
    # platform.
    #
    # Once imported, this record will be available in the Lockstep API as a [PaymentAppliedModel](https://developer.lockstep.io/docs/paymentappliedmodel).
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class PaymentAppliedSyncModel

        ##
        # Initialize the PaymentAppliedSyncModel using the provided prototype
        def initialize(params = {})
            @on_match_action = params.dig(:on_match_action)
            @network_id = params.dig(:network_id)
            @erp_key = params.dig(:erp_key)
            @invoice_erp_key = params.dig(:invoice_erp_key)
            @invoice_network_id = params.dig(:invoice_network_id)
            @payment_erp_key = params.dig(:payment_erp_key)
            @payment_network_id = params.dig(:payment_network_id)
            @entry_number = params.dig(:entry_number)
            @apply_to_invoice_date = params.dig(:apply_to_invoice_date)
            @payment_applied_amount = params.dig(:payment_applied_amount)
            @created = params.dig(:created)
            @modified = params.dig(:modified)
        end

        ##
        # @return [MatchAction] Indicates what action to take when an existing object has been found during the sync process.
        attr_accessor :on_match_action

        ##
        # @return [Uuid] The unique identifier of this object in the Sage Network platform.
        attr_accessor :network_id

        ##
        # @return [String] This is the primary key of the Payment Application record. For this field, you should use whatever this transaction's unique identifying number is in the originating system. Search for a unique, non-changing number within the originating financial system for this record. Since Payment Applications are often considered transactions, a typical value to look for will be the transaction ID number, the payment confirmation number, or some other record of this payment. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] This field indicates which Invoice had its balance reduced by applying this payment. In this field, identify the original primary key or unique ID of the Invoice which had its balance reduced. This information lets you track how an invoice was paid. You can identify what proportion of an invoice's balance was paid by which methods by joining this field to Invoices. This value should match the [Invoice ErpKey](https://developer.lockstep.io/docs/importing-invoices#erpkey) field on the [InvoiceSyncModel](https://developer.lockstep.io/docs/importing-invoices).
        attr_accessor :invoice_erp_key

        ##
        # @return [Uuid] The network id of the related Invoice.
        attr_accessor :invoice_network_id

        ##
        # @return [String] This field indicates which Payment was used to provide the funds for this payment application. In this field, identify the original primary key or unique ID of the Payment that was used for this payment application. This information lets you track how an invoice was paid. You can identify what proportion of an payment's balance was paid by which methods by joining this field to the Payment. This value should match the [Payment ErpKey](https://developer.lockstep.io/docs/importing-payments#erpkey) field on the [PaymentSyncModel](https://developer.lockstep.io/docs/importing-payments).
        attr_accessor :payment_erp_key

        ##
        # @return [Uuid] The network id of the related Payment.
        attr_accessor :payment_network_id

        ##
        # @return [Int32] The entry number of this payment application. This is often a journal entry number, confirmation code, or other identifying field for this payment application.
        attr_accessor :entry_number

        ##
        # @return [Date-time] The date this payment was applied to this invoice.
        attr_accessor :apply_to_invoice_date

        ##
        # @return [Double] The total amount that was applied to this Invoice from the Payment.
        attr_accessor :payment_applied_amount

        ##
        # @return [Date-time] If known, the date when this record was created according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a created-date, leave this field null.
        attr_accessor :created

        ##
        # @return [Date-time] If known, the date when this record was most recently modified according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a most-recently-modified-date, leave this field null.
        attr_accessor :modified

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'onMatchAction' => @on_match_action,
                'networkId' => @network_id,
                'erpKey' => @erp_key,
                'invoiceErpKey' => @invoice_erp_key,
                'invoiceNetworkId' => @invoice_network_id,
                'paymentErpKey' => @payment_erp_key,
                'paymentNetworkId' => @payment_network_id,
                'entryNumber' => @entry_number,
                'applyToInvoiceDate' => @apply_to_invoice_date,
                'paymentAppliedAmount' => @payment_applied_amount,
                'created' => @created,
                'modified' => @modified,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
