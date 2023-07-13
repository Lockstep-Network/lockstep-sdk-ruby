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
    # A request to insert a new Payment
    class InsertPaymentRequestModel

        ##
        # Initialize the InsertPaymentRequestModel using the provided prototype
        def initialize(params = {})
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @payment_id = params.dig(:payment_id)
            @company_id = params.dig(:company_id)
            @company_erp_key = params.dig(:company_erp_key)
            @company_external_reference = params.dig(:company_external_reference)
            @erp_key = params.dig(:erp_key)
            @payment_type = params.dig(:payment_type)
            @tender_type = params.dig(:tender_type)
            @memo_text = params.dig(:memo_text)
            @payment_date = params.dig(:payment_date)
            @post_date = params.dig(:post_date)
            @payment_amount = params.dig(:payment_amount)
            @unapplied_amount = params.dig(:unapplied_amount)
            @currency_code = params.dig(:currency_code)
            @reference_code = params.dig(:reference_code)
            @is_voided = params.dig(:is_voided)
            @in_dispute = params.dig(:in_dispute)
            @currency_rate = params.dig(:currency_rate)
            @base_currency_payment_amount = params.dig(:base_currency_payment_amount)
            @base_currency_unapplied_amount = params.dig(:base_currency_unapplied_amount)
            @bank_account_id = params.dig(:bank_account_id)
            @group_key = params.dig(:group_key)
            @applications = params.dig(:applications)
        end

        ##
        # @return [Uuid] The AppEnrollmentId of the application to write this record to.
        attr_accessor :app_enrollment_id

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :payment_id

        ##
        # @return [Uuid] The ID of the company to which this payment belongs.
        attr_accessor :company_id

        ##
        # @return [String] The ERP key for the company to which this payment belongs.
        attr_accessor :company_erp_key

        ##
        # @return [String] A additional reference that may be used in the ERP
        attr_accessor :company_external_reference

        ##
        # @return [String] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] The type of payment, AR Payment or AP Payment. Recognized PaymentType values are: * `AR Payment` - A payment made by a Customer to the Company * `AP Payment` - A payment made by the Company to a Vendor
        attr_accessor :payment_type

        ##
        # @return [String] Cash, check, credit card, wire transfer. Recognized TenderType values are: * `Cash` - A cash payment or other direct transfer. * `Check` - A check payment. * `Credit Card` - A payment made via a credit card. * `Wire Transfer` - A payment made via wire transfer from another financial institution. * `Other` - A payment made via another method not listed above.
        attr_accessor :tender_type

        ##
        # @return [String] Memo or reference text (ex. memo field on a check).
        attr_accessor :memo_text

        ##
        # @return [Date-time] The date when this payment was received.
        attr_accessor :payment_date

        ##
        # @return [Date-time] The date when a payment was posted to a ledger.
        attr_accessor :post_date

        ##
        # @return [Double] Total amount of this payment in it's received currency.
        attr_accessor :payment_amount

        ##
        # @return [Double] Unapplied balance of this payment in it's received currency. If this amount is nonzero, the field `IsOpen` will be true.
        attr_accessor :unapplied_amount

        ##
        # @return [String] The ISO 4217 currency code for this payment. For a list of ISO 4217 currency codes, see [Query Currencies](https://developer.lockstep.io/reference/get_api-v1-definitions-currencies).
        attr_accessor :currency_code

        ##
        # @return [String] Reference code for the payment for the given Erp system.
        attr_accessor :reference_code

        ##
        # @return [Boolean] Is the payment voided?
        attr_accessor :is_voided

        ##
        # @return [Boolean] Is the payment in dispute?
        attr_accessor :in_dispute

        ##
        # @return [Double] The Currency Rate used to get from the account's base currency to the payment amount.
        attr_accessor :currency_rate

        ##
        # @return [Double] Total amount of this payment in the group's base currency.
        attr_accessor :base_currency_payment_amount

        ##
        # @return [Double] Unapplied balance of this payment in the group's base currency. If this amount is nonzero, the field `IsOpen` will be true.
        attr_accessor :base_currency_unapplied_amount

        ##
        # @return [String] The Bank account id for the company to which this payment belongs.
        attr_accessor :bank_account_id

        ##
        # @return [Uuid] The GroupKey this request belongs to.
        attr_accessor :group_key

        ##
        # @return [InsertPaymentAppliedRequestModel] All applications this payment is associated with. To retrieve this collection, specify `Applications` in the "Include" parameter for your query.
        attr_accessor :applications

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'appEnrollmentId' => @app_enrollment_id,
                'paymentId' => @payment_id,
                'companyId' => @company_id,
                'companyErpKey' => @company_erp_key,
                'companyExternalReference' => @company_external_reference,
                'erpKey' => @erp_key,
                'paymentType' => @payment_type,
                'tenderType' => @tender_type,
                'memoText' => @memo_text,
                'paymentDate' => @payment_date,
                'postDate' => @post_date,
                'paymentAmount' => @payment_amount,
                'unappliedAmount' => @unapplied_amount,
                'currencyCode' => @currency_code,
                'referenceCode' => @reference_code,
                'isVoided' => @is_voided,
                'inDispute' => @in_dispute,
                'currencyRate' => @currency_rate,
                'baseCurrencyPaymentAmount' => @base_currency_payment_amount,
                'baseCurrencyUnappliedAmount' => @base_currency_unapplied_amount,
                'bankAccountId' => @bank_account_id,
                'groupKey' => @group_key,
                'applications' => @applications,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
