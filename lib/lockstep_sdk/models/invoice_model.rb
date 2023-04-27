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
    # An Invoice represents a bill sent from one company to another.  The creator of the invoice is identified
    # by the `CompanyId` field, and the recipient of the invoice is identified by the `CustomerId` field.  Most
    # invoices are uniquely identified both by a Lockstep Platform ID number and a customer ERP "key" that was
    # generated by the system that originated the invoice.  Invoices have a total amount and a due date, and when
    # some payments have been made on the Invoice the `TotalAmount` and the `OutstandingBalanceAmount` may be
    # different.
    class InvoiceModel

        ##
        # Initialize the InvoiceModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @invoice_id = params.dig(:invoice_id)
            @company_id = params.dig(:company_id)
            @customer_id = params.dig(:customer_id)
            @erp_key = params.dig(:erp_key)
            @purchase_order_code = params.dig(:purchase_order_code)
            @reference_code = params.dig(:reference_code)
            @salesperson_code = params.dig(:salesperson_code)
            @salesperson_name = params.dig(:salesperson_name)
            @invoice_type_code = params.dig(:invoice_type_code)
            @invoice_status_code = params.dig(:invoice_status_code)
            @terms_code = params.dig(:terms_code)
            @special_terms = params.dig(:special_terms)
            @currency_code = params.dig(:currency_code)
            @total_amount = params.dig(:total_amount)
            @sales_tax_amount = params.dig(:sales_tax_amount)
            @discount_amount = params.dig(:discount_amount)
            @outstanding_balance_amount = params.dig(:outstanding_balance_amount)
            @invoice_date = params.dig(:invoice_date)
            @discount_date = params.dig(:discount_date)
            @posted_date = params.dig(:posted_date)
            @invoice_closed_date = params.dig(:invoice_closed_date)
            @payment_due_date = params.dig(:payment_due_date)
            @imported_date = params.dig(:imported_date)
            @primary_origin_address_id = params.dig(:primary_origin_address_id)
            @primary_bill_to_address_id = params.dig(:primary_bill_to_address_id)
            @primary_ship_to_address_id = params.dig(:primary_ship_to_address_id)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @is_voided = params.dig(:is_voided)
            @in_dispute = params.dig(:in_dispute)
            @exclude_from_aging = params.dig(:exclude_from_aging)
            @preferred_delivery_method = params.dig(:preferred_delivery_method)
            @currency_rate = params.dig(:currency_rate)
            @base_currency_total_amount = params.dig(:base_currency_total_amount)
            @base_currency_sales_tax_amount = params.dig(:base_currency_sales_tax_amount)
            @base_currency_discount_amount = params.dig(:base_currency_discount_amount)
            @base_currency_outstanding_balance_amount = params.dig(:base_currency_outstanding_balance_amount)
            @erp_write_status = params.dig(:erp_write_status)
            @erp_write_status_name = params.dig(:erp_write_status_name)
            @source_modified_date = params.dig(:source_modified_date)
            @addresses = params.dig(:addresses)
            @lines = params.dig(:lines)
            @payments = params.dig(:payments)
            @notes = params.dig(:notes)
            @attachments = params.dig(:attachments)
            @company = params.dig(:company)
            @customer = params.dig(:customer)
            @customer_primary_contact = params.dig(:customer_primary_contact)
            @credit_memos = params.dig(:credit_memos)
            @custom_field_values = params.dig(:custom_field_values)
            @custom_field_definitions = params.dig(:custom_field_definitions)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :invoice_id

        ##
        # @return [Uuid] The ID number of the company that created this invoice.
        attr_accessor :company_id

        ##
        # @return [Uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_id

        ##
        # @return [String] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] The "Purchase Order Code" is a code that is sometimes used by companies to refer to the original PO that was sent that caused this invoice to be written. If a customer sends a purchase order to a vendor, the vendor can then create an invoice and refer back to the originating purchase order using this field.
        attr_accessor :purchase_order_code

        ##
        # @return [String] An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :reference_code

        ##
        # @return [String] A code identifying the salesperson responsible for writing this quote, invoice, or order.
        attr_accessor :salesperson_code

        ##
        # @return [String] A name identifying the salesperson responsible for writing this quote, invoice, or order.
        attr_accessor :salesperson_name

        ##
        # @return [String] A code identifying the type of this invoice. Recognized Invoice types are: * `AR Invoice` - Represents an invoice sent by Company to the Customer * `AP Invoice` - Represents an invoice sent by Vendor to the Company * `AR Credit Memo` - Represents a credit memo generated by Company given to Customer * `AP Credit Memo` - Represents a credit memo generated by Vendor given to Company
        attr_accessor :invoice_type_code

        ##
        # @return [String] A code identifying the status of this invoice. Recognized Invoice status codes are: * `Open` - Represents an invoice that is considered open and needs more work to complete * `Closed` - Represents an invoice that is considered closed and resolved
        attr_accessor :invoice_status_code

        ##
        # @return [String] A code identifying the terms given to the purchaser. This field is imported directly from the originating financial system and does not follow a specified format.
        attr_accessor :terms_code

        ##
        # @return [String] If the customer negotiated any special terms different from the standard terms above, describe them here.
        attr_accessor :special_terms

        ##
        # @return [String] The three-character ISO 4217 currency code used for this invoice.
        attr_accessor :currency_code

        ##
        # @return [Double] The total value of this invoice, inclusive of all taxes and line items in it's tendered currency.
        attr_accessor :total_amount

        ##
        # @return [Double] The total sales (or transactional) tax calculated for this invoice in it's tendered currency.
        attr_accessor :sales_tax_amount

        ##
        # @return [Double] The total discounts given by the seller to the buyer on this invoice in it's tendered currency.
        attr_accessor :discount_amount

        ##
        # @return [Double] The remaining balance value of this invoice in it's tendered currency.
        attr_accessor :outstanding_balance_amount

        ##
        # @return [Date] The reporting date for this invoice.
        attr_accessor :invoice_date

        ##
        # @return [Date] The date when discounts were adjusted for this invoice.
        attr_accessor :discount_date

        ##
        # @return [Date] The date when this invoice posted to the company's general ledger.
        attr_accessor :posted_date

        ##
        # @return [Date] The date when the invoice was closed and finalized after completion of all payments and delivery of all products and services.
        attr_accessor :invoice_closed_date

        ##
        # @return [Date] The date when the remaining outstanding balance is due.
        attr_accessor :payment_due_date

        ##
        # @return [Date-time] The date and time when this record was imported from the user's ERP or accounting system.
        attr_accessor :imported_date

        ##
        # @return [Uuid] The ID number of the invoice's origination address
        attr_accessor :primary_origin_address_id

        ##
        # @return [Uuid] The ID number of the invoice's bill-to address
        attr_accessor :primary_bill_to_address_id

        ##
        # @return [Uuid] The ID number of the invoice's ship-to address
        attr_accessor :primary_ship_to_address_id

        ##
        # @return [Date-time] The date on which this invoice record was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID number of the user who created this invoice.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date on which this invoice record was last modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The ID number of the user who most recently modified this invoice.
        attr_accessor :modified_user_id

        ##
        # @return [Uuid] The AppEnrollmentId of the application that imported this record. For accounts with more than one financial system connected, this field identifies the originating financial system that produced this record. This value is null if this record was not loaded from an external ERP or financial system.
        attr_accessor :app_enrollment_id

        ##
        # @return [Boolean] Is the invoice voided?
        attr_accessor :is_voided

        ##
        # @return [Boolean] Is the invoice in dispute?
        attr_accessor :in_dispute

        ##
        # @return [Boolean] Should the invoice be excluded from aging calculations?
        attr_accessor :exclude_from_aging

        ##
        # @return [String] Indicates the preferred delivery method for this invoice. Examples include Print, Email, Fax
        attr_accessor :preferred_delivery_method

        ##
        # @return [Double] The Currency Rate used to get from the account's base currency to the invoice amount.
        attr_accessor :currency_rate

        ##
        # @return [Double] The total value of this invoice, inclusive of all taxes and line items in the group's base currency.
        attr_accessor :base_currency_total_amount

        ##
        # @return [Double] The total sales (or transactional) tax calculated for this invoice in the group's base currency.
        attr_accessor :base_currency_sales_tax_amount

        ##
        # @return [Double] The total discounts given by the seller to the buyer on this invoice in the group's base currency.
        attr_accessor :base_currency_discount_amount

        ##
        # @return [Double] The remaining balance value of this invoice in the group's base currency.
        attr_accessor :base_currency_outstanding_balance_amount

        ##
        # @return [ErpWriteStatuses] Possible statuses for a record that supports ERP write.
        attr_accessor :erp_write_status

        ##
        # @return [String] The name of the ErpWriteStatus for this Invoice
        attr_accessor :erp_write_status_name

        ##
        # @return [Date-time] The date on which this record was last modified in source ERP.
        attr_accessor :source_modified_date

        ##
        # @return [InvoiceAddressModel] All addresses connected to this invoice. To retrieve this collection, specify `Addresses` in the "Include" parameter for your query.
        attr_accessor :addresses

        ##
        # @return [InvoiceLineModel] All lines attached to this invoice. To retrieve this collection, specify `Lines` in the "Include" parameter for your query.
        attr_accessor :lines

        ##
        # @return [InvoicePaymentDetailModel] All payments attached to this invoice, the amount of the payment applied to this Invoice, and the date the Payment was applied. To retrieve this collection, specify `Payments` in the "Include" parameter for your query.
        attr_accessor :payments

        ##
        # @return [NoteModel] A collection of notes linked to this record. To retrieve this collection, specify `Notes` in the `include` parameter when retrieving data. To create a note, use the [Create Note](https://developer.lockstep.io/reference/post_api-v1-notes) endpoint with the `TableKey` to `Invoice` and the `ObjectKey` set to the `InvoiceId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :notes

        ##
        # @return [AttachmentModel] A collection of attachments linked to this record. To retrieve this collection, specify `Attachments` in the `include` parameter when retrieving data. To create an attachment, use the [Upload Attachment](https://developer.lockstep.io/reference/post_api-v1-attachments) endpoint with the `TableKey` to `Invoice` and the `ObjectKey` set to the `InvoiceId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :attachments

        ##
        # @return [CompanyModel] The Company associated to this invoice. To retrieve this item, specify `Company` in the "Include" parameter for your query.
        attr_accessor :company

        ##
        # @return [CompanyModel] The Customer associated to the invoice customer To retrieve this item, specify `Customer` in the "Include" parameter for your query.
        attr_accessor :customer

        ##
        # @return [ContactModel] The Contact associated to the invoice customer To retrieve this item, specify `Customer` in the "Include" parameter for your query.
        attr_accessor :customer_primary_contact

        ##
        # @return [CreditMemoInvoiceModel] The credit memos associated to this invoice. To retrieve this item, specify `CreditMemos` in the "Include" parameter for your query.
        attr_accessor :credit_memos

        ##
        # @return [CustomFieldValueModel] A collection of custom fields linked to this record. To retrieve this collection, specify `CustomFieldValues` in the `include` parameter when retrieving data. To create a custom field, use the [Create Custom Field](https://developer.lockstep.io/reference/post_api-v1-customfieldvalues) endpoint with the `TableKey` to `Invoice` and the `ObjectKey` set to the `InvoiceId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :custom_field_values

        ##
        # @return [CustomFieldDefinitionModel] A collection of custom fields linked to this record. To retrieve this collection, specify `CustomFieldDefinitions` in the `include` parameter when retrieving data. To create a custom field, use the [Create Custom Field](https://developer.lockstep.io/reference/post_api-v1-customfieldvalues) endpoint with the `TableKey` to `Invoice` and the `ObjectKey` set to the `InvoiceId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :custom_field_definitions

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'invoiceId' => @invoice_id,
                'companyId' => @company_id,
                'customerId' => @customer_id,
                'erpKey' => @erp_key,
                'purchaseOrderCode' => @purchase_order_code,
                'referenceCode' => @reference_code,
                'salespersonCode' => @salesperson_code,
                'salespersonName' => @salesperson_name,
                'invoiceTypeCode' => @invoice_type_code,
                'invoiceStatusCode' => @invoice_status_code,
                'termsCode' => @terms_code,
                'specialTerms' => @special_terms,
                'currencyCode' => @currency_code,
                'totalAmount' => @total_amount,
                'salesTaxAmount' => @sales_tax_amount,
                'discountAmount' => @discount_amount,
                'outstandingBalanceAmount' => @outstanding_balance_amount,
                'invoiceDate' => @invoice_date,
                'discountDate' => @discount_date,
                'postedDate' => @posted_date,
                'invoiceClosedDate' => @invoice_closed_date,
                'paymentDueDate' => @payment_due_date,
                'importedDate' => @imported_date,
                'primaryOriginAddressId' => @primary_origin_address_id,
                'primaryBillToAddressId' => @primary_bill_to_address_id,
                'primaryShipToAddressId' => @primary_ship_to_address_id,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'appEnrollmentId' => @app_enrollment_id,
                'isVoided' => @is_voided,
                'inDispute' => @in_dispute,
                'excludeFromAging' => @exclude_from_aging,
                'preferredDeliveryMethod' => @preferred_delivery_method,
                'currencyRate' => @currency_rate,
                'baseCurrencyTotalAmount' => @base_currency_total_amount,
                'baseCurrencySalesTaxAmount' => @base_currency_sales_tax_amount,
                'baseCurrencyDiscountAmount' => @base_currency_discount_amount,
                'baseCurrencyOutstandingBalanceAmount' => @base_currency_outstanding_balance_amount,
                'erpWriteStatus' => @erp_write_status,
                'erpWriteStatusName' => @erp_write_status_name,
                'sourceModifiedDate' => @source_modified_date,
                'addresses' => @addresses,
                'lines' => @lines,
                'payments' => @payments,
                'notes' => @notes,
                'attachments' => @attachments,
                'company' => @company,
                'customer' => @customer,
                'customerPrimaryContact' => @customer_primary_contact,
                'creditMemos' => @credit_memos,
                'customFieldValues' => @custom_field_values,
                'customFieldDefinitions' => @custom_field_definitions,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
