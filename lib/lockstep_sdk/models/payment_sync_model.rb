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
    # The PaymentSyncModel represents information coming into Lockstep from an external financial system or other
    # enterprise resource planning system.  To import data from an external system, convert your original data into
    # the PaymentSyncModel format and call the [Upload Sync File API](https://developer.lockstep.io/reference/post_api-v1-sync-zip).
    # This API retrieves all of the data you uploaded in a compressed ZIP file and imports it into the Lockstep
    # platform.
    #
    # Once imported, this record will be available in the Lockstep API as a [PaymentModel](https://developer.lockstep.io/docs/paymentmodel).
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class PaymentSyncModel

        ##
        # Initialize the PaymentSyncModel using the provided prototype
        def initialize(params = {})
            @erp_key = params.dig(:erp_key)
            @company_erp_key = params.dig(:company_erp_key)
            @payment_type = params.dig(:payment_type)
            @tender_type = params.dig(:tender_type)
            @is_open = params.dig(:is_open)
            @memo_text = params.dig(:memo_text)
            @payment_date = params.dig(:payment_date)
            @post_date = params.dig(:post_date)
            @payment_amount = params.dig(:payment_amount)
            @unapplied_amount = params.dig(:unapplied_amount)
            @currency_code = params.dig(:currency_code)
            @created = params.dig(:created)
            @modified = params.dig(:modified)
            @reference_code = params.dig(:reference_code)
            @is_voided = params.dig(:is_voided)
            @in_dispute = params.dig(:in_dispute)
        end

        ##
        # @return [String] This is the primary key of the Payment record. For this field, you should use whatever the payment's unique identifying number is in the originating system. Search for a unique, non-changing number within the originating financial system for this record. Example: If you store your payment records in a database, whatever the primary key for the payment table is in the database should be the "ErpKey". For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] The original primary key or unique ID of the company to which this payment belongs. This value should match the [Company ErpKey](https://developer.lockstep.io/docs/importing-companies#erpkey) field on the [CompanySyncModel](https://developer.lockstep.io/docs/importing-companies).
        attr_accessor :company_erp_key

        ##
        # @return [String] The type of payment, AR Payment or AP Payment. Recognized PaymentType values are: * `AR Payment` - A payment made by a Customer to the Company * `AP Payment` - A payment made by the Company to a Vendor
        attr_accessor :payment_type

        ##
        # @return [String] Cash, check, credit card, wire transfer. Recognized TenderType values are: * `Cash` - A cash payment or other direct transfer. * `Check` - A check payment. * `Credit Card` - A payment made via a credit card. * `Wire Transfer` - A payment made via wire transfer from another financial institution. * `Other` - A payment made via another method not listed above.
        attr_accessor :tender_type

        ##
        # @return [Boolean] True if this payment includes some unassigned amount that has not yet been applied to an invoice. If this value is true, the field `UnappliedAmount` will be nonzero.
        attr_accessor :is_open

        ##
        # @return [String] Memo or reference text (ex. memo field on a check).
        attr_accessor :memo_text

        ##
        # @return [Date-time] The date when this payment was received. This typically is the date when an accounting employee recorded that they received notification that the payment had occurred, whether they were notified by email, postal mail, or financial transaction notification.
        attr_accessor :payment_date

        ##
        # @return [Date-time] The date when a payment was posted to a ledger. This date is often determined by a company's accounting practices and may be different than the date when the payment was received. This date may be affected by issues such as temporary holds on funds transferred, bank holidays, or other actions.
        attr_accessor :post_date

        ##
        # @return [Double] Total amount of this payment.
        attr_accessor :payment_amount

        ##
        # @return [Double] Unapplied balance of this payment. If this amount is nonzero, the field `IsOpen` will be true.
        attr_accessor :unapplied_amount

        ##
        # @return [String] The ISO 4217 currency code for this payment. For a list of ISO 4217 currency codes, see [Query Currencies](https://developer.lockstep.io/reference/get_api-v1-definitions-currencies).
        attr_accessor :currency_code

        ##
        # @return [Date-time] If known, the date when this record was created according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a created-date, leave this field null.
        attr_accessor :created

        ##
        # @return [Date-time] If known, the date when this record was most recently modified according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a most-recently-modified-date, leave this field null.
        attr_accessor :modified

        ##
        # @return [String] A reference code for the payment for the given financial or ERP system. This can be any value that the originating system uses to designate the payment, such as a confirmation number or tracking number, that is different from the `ErpKey` value.
        attr_accessor :reference_code

        ##
        # @return [Boolean] True if this payment was voided.
        attr_accessor :is_voided

        ##
        # @return [Boolean] True if this payment is in dispute.
        attr_accessor :in_dispute

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'erpKey' => @erp_key,
                'companyErpKey' => @company_erp_key,
                'paymentType' => @payment_type,
                'tenderType' => @tender_type,
                'isOpen' => @is_open,
                'memoText' => @memo_text,
                'paymentDate' => @payment_date,
                'postDate' => @post_date,
                'paymentAmount' => @payment_amount,
                'unappliedAmount' => @unapplied_amount,
                'currencyCode' => @currency_code,
                'created' => @created,
                'modified' => @modified,
                'referenceCode' => @reference_code,
                'isVoided' => @is_voided,
                'inDispute' => @in_dispute,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
