#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # The CreditMemoAppliedSyncModel represents information coming into Lockstep from an external financial system or
    # other enterprise resource planning system.  To import data from an external system, convert your original data
    # into the CreditMemoAppliedSyncModel format and call the [Upload Sync File API](https://developer.lockstep.io/reference/post_api-v1-sync-zip).
    # This API retrieves all of the data you uploaded in a compressed ZIP file and imports it into the Lockstep
    # platform.
    #
    # Once imported, this record will be available in the Lockstep API as a [CreditMemoAppliedModel](https://developer.lockstep.io/docs/creditmemoappliedmodel).
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class CreditMemoAppliedSyncModel

        ##
        # Initialize the CreditMemoAppliedSyncModel using the provided prototype
        def initialize(params = {})
            @erp_key = params.dig(:erp_key)
            @invoice_erp_key = params.dig(:invoice_erp_key)
            @credit_memo_invoice_erp_key = params.dig(:credit_memo_invoice_erp_key)
            @entry_number = params.dig(:entry_number)
            @apply_to_invoice_date = params.dig(:apply_to_invoice_date)
            @credit_memo_applied_amount = params.dig(:credit_memo_applied_amount)
            @created = params.dig(:created)
            @modified = params.dig(:modified)
        end

        ##
        # @return [String] This is the primary key of the Credit Memo Application record. For this field, you should use whatever this transaction's unique identifying number is in the originating system. Search for a unique, non-changing number within the originating financial system for this record. Since Credit Memo Applications are often considered transactions, a typical value to look for will be the transaction ID number, the payment confirmation number, or some other record of this payment. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] This field indicates which Invoice had its balanced reduced by applying a credit memo. In this field, identify the original primary key or unique ID of the Invoice which had its balanced reduced. Example: Company ABC received a credit memo, CM000123 for $500. Company ABC then chooses to apply this credit memo to reduce the balance of the invoice PO1000578. The `InvoiceErpKey` is `PO1000578`.
        attr_accessor :invoice_erp_key

        ##
        # @return [String] This field indicates which Invoice is the original credit memo that was used to make this payment application event. In this field, identify the original primary key or unique ID of the Invoice which created the credit memo that was consumed in this event. Example: Company ABC received a credit memo, CM000123 for $500. Company ABC then chooses to apply this credit memo to reduce the balance of the invoice PO1000578. The `CreditMemoInvoiceErpKey` is `CM000123`.
        attr_accessor :credit_memo_invoice_erp_key

        ##
        # @return [Int32] Reference number for the applied credit memo.
        attr_accessor :entry_number

        ##
        # @return [Date-time] The date on which this credit memo was applied to the Invoice.
        attr_accessor :apply_to_invoice_date

        ##
        # @return [Double] The amount of this credit memo that was applied to this Invoice.
        attr_accessor :credit_memo_applied_amount

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
                'erpKey' => @erp_key,
                'invoiceErpKey' => @invoice_erp_key,
                'creditMemoInvoiceErpKey' => @credit_memo_invoice_erp_key,
                'entryNumber' => @entry_number,
                'applyToInvoiceDate' => @apply_to_invoice_date,
                'creditMemoAppliedAmount' => @credit_memo_applied_amount,
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
