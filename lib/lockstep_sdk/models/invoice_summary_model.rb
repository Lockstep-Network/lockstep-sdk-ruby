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
    # Contains summarized data for an invoice
    class InvoiceSummaryModel

        ##
        # Initialize the InvoiceSummaryModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @customer_id = params.dig(:customer_id)
            @invoice_id = params.dig(:invoice_id)
            @invoice_number = params.dig(:invoice_number)
            @invoice_date = params.dig(:invoice_date)
            @invoice_closed_date = params.dig(:invoice_closed_date)
            @customer_name = params.dig(:customer_name)
            @status = params.dig(:status)
            @payment_due_date = params.dig(:payment_due_date)
            @currency_code = params.dig(:currency_code)
            @invoice_amount = params.dig(:invoice_amount)
            @outstanding_balance = params.dig(:outstanding_balance)
            @base_currency_code = params.dig(:base_currency_code)
            @base_currency_invoice_amount = params.dig(:base_currency_invoice_amount)
            @base_currency_outstanding_balance = params.dig(:base_currency_outstanding_balance)
            @invoice_type_code = params.dig(:invoice_type_code)
            @newest_activity = params.dig(:newest_activity)
            @days_past_due = params.dig(:days_past_due)
            @payment_count = params.dig(:payment_count)
            @supports_erp_pdf_retrieval = params.dig(:supports_erp_pdf_retrieval)
            @payment_numbers = params.dig(:payment_numbers)
            @payment_ids = params.dig(:payment_ids)
            @modified = params.dig(:modified)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_id

        ##
        # @return [Uuid] The unique ID number of this invoice.
        attr_accessor :invoice_id

        ##
        # @return [String] A reference code that is used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :invoice_number

        ##
        # @return [Date] The reporting date for this invoice.
        attr_accessor :invoice_date

        ##
        # @return [Date] The date when the invoice was closed and finalized after completion of all payments and delivery of all products and services.
        attr_accessor :invoice_closed_date

        ##
        # @return [String] The name of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_name

        ##
        # @return [String] The status of the invoice.
        attr_accessor :status

        ##
        # @return [Date] The due date of the invoice.
        attr_accessor :payment_due_date

        ##
        # @return [String] The currency code for the invoice.
        attr_accessor :currency_code

        ##
        # @return [Double] The total amount of the Invoice.
        attr_accessor :invoice_amount

        ##
        # @return [Double] The remaining balance value of this invoice.
        attr_accessor :outstanding_balance

        ##
        # @return [String] The group's base currency code.
        attr_accessor :base_currency_code

        ##
        # @return [Double] The invoice amount in the group's base currency
        attr_accessor :base_currency_invoice_amount

        ##
        # @return [Double] The outstanding balance amount in the group's base currency
        attr_accessor :base_currency_outstanding_balance

        ##
        # @return [String] A code identifying the type of this Invoice.
        attr_accessor :invoice_type_code

        ##
        # @return [Date] The date stamp for the newest Activity on this Invoice.
        attr_accessor :newest_activity

        ##
        # @return [Int32] The number of days this Invoice is past due.
        attr_accessor :days_past_due

        ##
        # @return [Int32] The number of payments associated to this invoice.
        attr_accessor :payment_count

        ##
        # @return [Boolean] Specific invoices have support for pdf retrieval from their respective erp. When this flag is true, an additional call to Invoices/{id}/pdf can be made to retrieve a pdf directly from the erp.
        attr_accessor :supports_erp_pdf_retrieval

        ##
        # @return [String] The memo text of the payments associated to this invoice.
        attr_accessor :payment_numbers

        ##
        # @return [Uuid] The ids of the payments associated to this invoice.
        attr_accessor :payment_ids

        ##
        # @return [Date-time] The modified date of the invoice.
        attr_accessor :modified

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'customerId' => @customer_id,
                'invoiceId' => @invoice_id,
                'invoiceNumber' => @invoice_number,
                'invoiceDate' => @invoice_date,
                'invoiceClosedDate' => @invoice_closed_date,
                'customerName' => @customer_name,
                'status' => @status,
                'paymentDueDate' => @payment_due_date,
                'currencyCode' => @currency_code,
                'invoiceAmount' => @invoice_amount,
                'outstandingBalance' => @outstanding_balance,
                'baseCurrencyCode' => @base_currency_code,
                'baseCurrencyInvoiceAmount' => @base_currency_invoice_amount,
                'baseCurrencyOutstandingBalance' => @base_currency_outstanding_balance,
                'invoiceTypeCode' => @invoice_type_code,
                'newestActivity' => @newest_activity,
                'daysPastDue' => @days_past_due,
                'paymentCount' => @payment_count,
                'supportsErpPdfRetrieval' => @supports_erp_pdf_retrieval,
                'paymentNumbers' => @payment_numbers,
                'paymentIds' => @payment_ids,
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
