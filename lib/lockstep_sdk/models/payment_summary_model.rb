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
    # Contains summary information for a Payment
    class PaymentSummaryModel

        ##
        # Initialize the PaymentSummaryModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @payment_id = params.dig(:payment_id)
            @memo_text = params.dig(:memo_text)
            @reference_code = params.dig(:reference_code)
            @tender_type = params.dig(:tender_type)
            @payment_type = params.dig(:payment_type)
            @payment_date = params.dig(:payment_date)
            @currency_code = params.dig(:currency_code)
            @payment_amount = params.dig(:payment_amount)
            @unapplied_amount = params.dig(:unapplied_amount)
            @base_currency_code = params.dig(:base_currency_code)
            @base_currency_payment_amount = params.dig(:base_currency_payment_amount)
            @base_currency_unapplied_amount = params.dig(:base_currency_unapplied_amount)
            @is_open = params.dig(:is_open)
            @invoice_count = params.dig(:invoice_count)
            @total_payments_applied = params.dig(:total_payments_applied)
            @invoice_list = params.dig(:invoice_list)
            @invoice_id_list = params.dig(:invoice_id_list)
            @payment_company_id = params.dig(:payment_company_id)
            @payment_company_name = params.dig(:payment_company_name)
            @supports_erp_pdf_retrieval = params.dig(:supports_erp_pdf_retrieval)
            @customer_ids = params.dig(:customer_ids)
            @customer_names = params.dig(:customer_names)
            @company_ids = params.dig(:company_ids)
            @company_names = params.dig(:company_names)
            @modified = params.dig(:modified)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The id of the payment
        attr_accessor :payment_id

        ##
        # @return [String] Memo or reference text (ex. memo field on a check).
        attr_accessor :memo_text

        ##
        # @return [String] Reference code for the payment for the given Erp system.
        attr_accessor :reference_code

        ##
        # @return [String] The tender type of payment (Cash, Check, etc.)
        attr_accessor :tender_type

        ##
        # @return [String] The type of payment, AR Payment or AP Payment.
        attr_accessor :payment_type

        ##
        # @return [Date] The date of this payment.
        attr_accessor :payment_date

        ##
        # @return [String] The currency code of the payment.
        attr_accessor :currency_code

        ##
        # @return [Double] Total amount of this payment.
        attr_accessor :payment_amount

        ##
        # @return [Double] Unapplied balance of this payment.
        attr_accessor :unapplied_amount

        ##
        # @return [String] The base currency code of the group.
        attr_accessor :base_currency_code

        ##
        # @return [Double] The payment amount in the group's base currency.
        attr_accessor :base_currency_payment_amount

        ##
        # @return [Double] The unapplied amount in the group's base currency.
        attr_accessor :base_currency_unapplied_amount

        ##
        # @return [Boolean] True if this payment includes some unassigned amount that has not yet been applied to an invoice. If this value is true, the field `UnappliedAmount` will be nonzero.
        attr_accessor :is_open

        ##
        # @return [Int32] The number of invoices associated to this payment.
        attr_accessor :invoice_count

        ##
        # @return [Double] The number of payments applied to this payment.
        attr_accessor :total_payments_applied

        ##
        # @return [String] The reference codes of the invoices associated to this payment.
        attr_accessor :invoice_list

        ##
        # @return [Uuid] The ids of the invoices associated to this payment.
        attr_accessor :invoice_id_list

        ##
        # @return [Uuid] The id of the company for this payment.
        attr_accessor :payment_company_id

        ##
        # @return [String] The name of the company for this payment.
        attr_accessor :payment_company_name

        ##
        # @return [Boolean] Specific payments have support for pdf retrieval from their respective erp. When this flag is true, an additional call to Payments/{id}/pdf can be made to retrieve a pdf directly from the erp.
        attr_accessor :supports_erp_pdf_retrieval

        ##
        # @return [Uuid] The ids of the customer for the associated invoices.
        attr_accessor :customer_ids

        ##
        # @return [String] The names of the customer for the associated invoices.
        attr_accessor :customer_names

        ##
        # @return [Uuid] The ids of the company for the associated invoices.
        attr_accessor :company_ids

        ##
        # @return [String] The names of the company for the associated invoices.
        attr_accessor :company_names

        ##
        # @return [Date-time] The modified date of the payment
        attr_accessor :modified

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'paymentId' => @payment_id,
                'memoText' => @memo_text,
                'referenceCode' => @reference_code,
                'tenderType' => @tender_type,
                'paymentType' => @payment_type,
                'paymentDate' => @payment_date,
                'currencyCode' => @currency_code,
                'paymentAmount' => @payment_amount,
                'unappliedAmount' => @unapplied_amount,
                'baseCurrencyCode' => @base_currency_code,
                'baseCurrencyPaymentAmount' => @base_currency_payment_amount,
                'baseCurrencyUnappliedAmount' => @base_currency_unapplied_amount,
                'isOpen' => @is_open,
                'invoiceCount' => @invoice_count,
                'totalPaymentsApplied' => @total_payments_applied,
                'invoiceList' => @invoice_list,
                'invoiceIdList' => @invoice_id_list,
                'paymentCompanyId' => @payment_company_id,
                'paymentCompanyName' => @payment_company_name,
                'supportsErpPdfRetrieval' => @supports_erp_pdf_retrieval,
                'customerIds' => @customer_ids,
                'customerNames' => @customer_names,
                'companyIds' => @company_ids,
                'companyNames' => @company_names,
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
