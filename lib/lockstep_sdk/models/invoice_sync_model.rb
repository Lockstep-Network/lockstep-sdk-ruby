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
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # The InvoiceSyncModel represents information coming into Lockstep from an external financial system or other
    # enterprise resource planning system.  To import data from an external system, convert your original data into
    # the InvoiceSyncModel format and call the [Upload Sync File API](https://developer.lockstep.io/reference/post_api-v1-sync-zip).
    # This API retrieves all of the data you uploaded in a compressed ZIP file and imports it into the Lockstep
    # platform.
    #
    # Once imported, this record will be available in the Lockstep API as an [InvoiceModel](https://developer.lockstep.io/docs/invoicemodel).
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class InvoiceSyncModel

        ##
        # Initialize the InvoiceSyncModel using the provided prototype
        def initialize(params = {})
            @erp_key = params.dig(:erp_key)
            @company_erp_key = params.dig(:company_erp_key)
            @customer_erp_key = params.dig(:customer_erp_key)
            @salesperson_name = params.dig(:salesperson_name)
            @purchase_order_code = params.dig(:purchase_order_code)
            @reference_code = params.dig(:reference_code)
            @salesperson_code = params.dig(:salesperson_code)
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
            @origin_address_line1 = params.dig(:origin_address_line1)
            @origin_address_line2 = params.dig(:origin_address_line2)
            @origin_address_line3 = params.dig(:origin_address_line3)
            @origin_address_city = params.dig(:origin_address_city)
            @origin_address_region = params.dig(:origin_address_region)
            @origin_address_postal_code = params.dig(:origin_address_postal_code)
            @origin_address_country = params.dig(:origin_address_country)
            @origin_address_latitude = params.dig(:origin_address_latitude)
            @origin_address_longitude = params.dig(:origin_address_longitude)
            @bill_to_address_line1 = params.dig(:bill_to_address_line1)
            @bill_to_address_line2 = params.dig(:bill_to_address_line2)
            @bill_to_address_line3 = params.dig(:bill_to_address_line3)
            @bill_to_address_city = params.dig(:bill_to_address_city)
            @bill_to_address_region = params.dig(:bill_to_address_region)
            @bill_to_address_postal_code = params.dig(:bill_to_address_postal_code)
            @bill_to_address_country = params.dig(:bill_to_address_country)
            @bill_to_address_latitude = params.dig(:bill_to_address_latitude)
            @bill_to_address_longitude = params.dig(:bill_to_address_longitude)
            @ship_to_address_line1 = params.dig(:ship_to_address_line1)
            @ship_to_address_line2 = params.dig(:ship_to_address_line2)
            @ship_to_address_line3 = params.dig(:ship_to_address_line3)
            @ship_to_address_city = params.dig(:ship_to_address_city)
            @ship_to_address_region = params.dig(:ship_to_address_region)
            @ship_to_address_postal_code = params.dig(:ship_to_address_postal_code)
            @ship_to_address_country = params.dig(:ship_to_address_country)
            @ship_to_address_latitude = params.dig(:ship_to_address_latitude)
            @ship_to_address_longitude = params.dig(:ship_to_address_longitude)
            @created = params.dig(:created)
            @modified = params.dig(:modified)
            @is_voided = params.dig(:is_voided)
            @in_dispute = params.dig(:in_dispute)
        end

        ##
        # @return [String] This is the primary key of the Invoice record. For this field, you should use whatever the invoice's unique identifying number is in the originating system. Search for a unique, non-changing number within the originating financial system for this record. Example: If you store your invoice records in a database, whatever the primary key for the invoice table is in the database should be the "ErpKey". For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] The original primary key or unique ID of the company to which this invoice belongs. This value should match the [Company ErpKey](https://developer.lockstep.io/docs/importing-companies#erpkey) field on the [CompanySyncModel](https://developer.lockstep.io/docs/importing-companies). An Invoice has two relationships: The Company and the Customer. The field `CompanyErpKey` identifies the company that created the invoice, and the field `CustomerErpKey` is the customer to whom the invoice was sent.
        attr_accessor :company_erp_key

        ##
        # @return [String] The original primary key or unique ID of the company to which this invoice was sent. This value should match the [Company ErpKey](https://developer.lockstep.io/docs/importing-companies#erpkey) field on the [CompanySyncModel](https://developer.lockstep.io/docs/importing-companies). An Invoice has two relationships: The Company and the Customer. The field `CompanyErpKey` identifies the company that created the invoice, and the field `CustomerErpKey` is the customer to whom the invoice was sent.
        attr_accessor :customer_erp_key

        ##
        # @return [String] The name of the salesperson that wrote this invoice. This is just text, it is not a reference to the "Contacts" table. You will not receive an error if this field does not match a known contact person.
        attr_accessor :salesperson_name

        ##
        # @return [String] The "Purchase Order Code" is a code that is sometimes used by companies to refer to the original PO that was sent that caused this invoice to be written. If a customer sends a purchase order to a vendor, the vendor can then create an invoice and refer back to the originating purchase order using this field.
        attr_accessor :purchase_order_code

        ##
        # @return [String] An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :reference_code

        ##
        # @return [String] A code identifying the salesperson responsible for writing this quote, invoice, or order. This is just text, it is not a reference to the "Contacts" table. You will not receive an error if this field does not match a known contact person.
        attr_accessor :salesperson_code

        ##
        # @return [String] A code identifying the type of this invoice. Recognized Invoice types are: * `Invoice` - Represents an invoice sent by Company to the Customer * `AP Invoice` - Represents an invoice sent by Customer to the Company * `Credit Memo` - Represents a credit memo generated by Customer given to Company
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
        # @return [String] The three-character ISO 4217 currency code used for this invoice. This will be validated by the /api/v1/currencies data set
        attr_accessor :currency_code

        ##
        # @return [Double] The total value of this invoice, inclusive of all taxes and line items.
        attr_accessor :total_amount

        ##
        # @return [Double] The total sales (or transactional) tax calculated for this invoice.
        attr_accessor :sales_tax_amount

        ##
        # @return [Double] The total discounts given by the seller to the buyer on this invoice.
        attr_accessor :discount_amount

        ##
        # @return [Double] The remaining balance value of this invoice.
        attr_accessor :outstanding_balance_amount

        ##
        # @return [Date-time] The reporting date for this invoice.
        attr_accessor :invoice_date

        ##
        # @return [Date-time] The date when discounts were adjusted for this invoice.
        attr_accessor :discount_date

        ##
        # @return [Date-time] The date when this invoice posted to the company's general ledger.
        attr_accessor :posted_date

        ##
        # @return [Date-time] The date when the invoice was closed and finalized after completion of all payments and delivery of all products and services.
        attr_accessor :invoice_closed_date

        ##
        # @return [Date-time] The date when the remaining outstanding balance is due.
        attr_accessor :payment_due_date

        ##
        # @return [Date-time] The date and time when this record was imported from the user's ERP or accounting system.
        attr_accessor :imported_date

        ##
        # @return [String] The origination address for this invoice
        attr_accessor :origin_address_line1

        ##
        # @return [String] The origination address for this invoice
        attr_accessor :origin_address_line2

        ##
        # @return [String] The origination address for this invoice
        attr_accessor :origin_address_line3

        ##
        # @return [String] The origination address for this invoice
        attr_accessor :origin_address_city

        ##
        # @return [String] The origination address for this invoice
        attr_accessor :origin_address_region

        ##
        # @return [String] The origination address for this invoice
        attr_accessor :origin_address_postal_code

        ##
        # @return [String] The origination address for this invoice This will be validated by the /api/v1/countries data set
        attr_accessor :origin_address_country

        ##
        # @return [Float] The origination address for this invoice
        attr_accessor :origin_address_latitude

        ##
        # @return [Float] The origination address for this invoice
        attr_accessor :origin_address_longitude

        ##
        # @return [String] The billing address for this invoice
        attr_accessor :bill_to_address_line1

        ##
        # @return [String] The billing address for this invoice
        attr_accessor :bill_to_address_line2

        ##
        # @return [String] The billing address for this invoice
        attr_accessor :bill_to_address_line3

        ##
        # @return [String] The billing address for this invoice
        attr_accessor :bill_to_address_city

        ##
        # @return [String] The billing address for this invoice
        attr_accessor :bill_to_address_region

        ##
        # @return [String] The billing address for this invoice
        attr_accessor :bill_to_address_postal_code

        ##
        # @return [String] The billing address for this invoice This will be validated by the /api/v1/countries data set
        attr_accessor :bill_to_address_country

        ##
        # @return [Float] The billing address for this invoice
        attr_accessor :bill_to_address_latitude

        ##
        # @return [Float] The billing address for this invoice
        attr_accessor :bill_to_address_longitude

        ##
        # @return [String] The shipping address for this invoice
        attr_accessor :ship_to_address_line1

        ##
        # @return [String] The shipping address for this invoice
        attr_accessor :ship_to_address_line2

        ##
        # @return [String] The shipping address for this invoice
        attr_accessor :ship_to_address_line3

        ##
        # @return [String] The shipping address for this invoice
        attr_accessor :ship_to_address_city

        ##
        # @return [String] The shipping address for this invoice
        attr_accessor :ship_to_address_region

        ##
        # @return [String] The shipping address for this invoice
        attr_accessor :ship_to_address_postal_code

        ##
        # @return [String] The shipping address for this invoice This will be validated by the /api/v1/countries data set
        attr_accessor :ship_to_address_country

        ##
        # @return [Float] The shipping address for this invoice
        attr_accessor :ship_to_address_latitude

        ##
        # @return [Float] The shipping address for this invoice
        attr_accessor :ship_to_address_longitude

        ##
        # @return [Date-time] If known, the date when this record was created according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a created-date, leave this field null.
        attr_accessor :created

        ##
        # @return [Date-time] If known, the date when this record was most recently modified according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a most-recently-modified-date, leave this field null.
        attr_accessor :modified

        ##
        # @return [Boolean] Is the invoice voided? If not specified, we assume the invoice is not voided.
        attr_accessor :is_voided

        ##
        # @return [Boolean] Is the invoice in dispute? If not specified, we assume the invoice is not in dispute.
        attr_accessor :in_dispute

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'erpKey' => @erp_key,
                'companyErpKey' => @company_erp_key,
                'customerErpKey' => @customer_erp_key,
                'salespersonName' => @salesperson_name,
                'purchaseOrderCode' => @purchase_order_code,
                'referenceCode' => @reference_code,
                'salespersonCode' => @salesperson_code,
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
                'originAddressLine1' => @origin_address_line1,
                'originAddressLine2' => @origin_address_line2,
                'originAddressLine3' => @origin_address_line3,
                'originAddressCity' => @origin_address_city,
                'originAddressRegion' => @origin_address_region,
                'originAddressPostalCode' => @origin_address_postal_code,
                'originAddressCountry' => @origin_address_country,
                'originAddressLatitude' => @origin_address_latitude,
                'originAddressLongitude' => @origin_address_longitude,
                'billToAddressLine1' => @bill_to_address_line1,
                'billToAddressLine2' => @bill_to_address_line2,
                'billToAddressLine3' => @bill_to_address_line3,
                'billToAddressCity' => @bill_to_address_city,
                'billToAddressRegion' => @bill_to_address_region,
                'billToAddressPostalCode' => @bill_to_address_postal_code,
                'billToAddressCountry' => @bill_to_address_country,
                'billToAddressLatitude' => @bill_to_address_latitude,
                'billToAddressLongitude' => @bill_to_address_longitude,
                'shipToAddressLine1' => @ship_to_address_line1,
                'shipToAddressLine2' => @ship_to_address_line2,
                'shipToAddressLine3' => @ship_to_address_line3,
                'shipToAddressCity' => @ship_to_address_city,
                'shipToAddressRegion' => @ship_to_address_region,
                'shipToAddressPostalCode' => @ship_to_address_postal_code,
                'shipToAddressCountry' => @ship_to_address_country,
                'shipToAddressLatitude' => @ship_to_address_latitude,
                'shipToAddressLongitude' => @ship_to_address_longitude,
                'created' => @created,
                'modified' => @modified,
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
