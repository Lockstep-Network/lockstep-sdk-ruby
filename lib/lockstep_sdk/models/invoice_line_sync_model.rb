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
    # The InvoiceLineSyncModel represents information coming into Lockstep from an external financial system or other
    # enterprise resource planning system.  To import data from an external system, convert your original data into
    # the InvoiceLineSyncModel format and call the [Upload Sync File API](https://developer.lockstep.io/reference/post_api-v1-sync-zip).
    # This API retrieves all of the data you uploaded in a compressed ZIP file and imports it into the Lockstep
    # platform.
    #
    # Once imported, this record will be available in the Lockstep API as an [InvoiceLineModel](https://developer.lockstep.io/docs/invoicelinemodel).
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class InvoiceLineSyncModel

        ##
        # Initialize the InvoiceLineSyncModel using the provided prototype
        def initialize(params = {})
            @erp_key = params.dig(:erp_key)
            @invoice_erp_key = params.dig(:invoice_erp_key)
            @line_number = params.dig(:line_number)
            @product_code = params.dig(:product_code)
            @description = params.dig(:description)
            @unit_measure_code = params.dig(:unit_measure_code)
            @unit_price = params.dig(:unit_price)
            @quantity = params.dig(:quantity)
            @quantity_shipped = params.dig(:quantity_shipped)
            @quantity_received = params.dig(:quantity_received)
            @total_amount = params.dig(:total_amount)
            @exemption_code = params.dig(:exemption_code)
            @reporting_date = params.dig(:reporting_date)
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
        end

        ##
        # @return [String] This is the primary key of the Invoice Line record. For this field, you should use whatever the contact's unique identifying number is in the originating system. Search for a unique, non-changing number within the originating financial system for this record. Example: If you store your invoice line records in a database, whatever the primary key for the invoice line table is in the database should be the "ErpKey". For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] The original primary key or unique ID of the invoice to which this line belongs. This value should match the [Invoice ErpKey](https://developer.lockstep.io/docs/importing-invoices#erpkey) field on the [InvoiceSyncModel](https://developer.lockstep.io/docs/importing-invoices).
        attr_accessor :invoice_erp_key

        ##
        # @return [String] The line number of this line, as defined in the originating ERP or accounting system. You can sort on this number to get the original view of lines within the invoice.
        attr_accessor :line_number

        ##
        # @return [String] A code number identifying the product or service that is specified on this line.
        attr_accessor :product_code

        ##
        # @return [String] Description of this invoice line.
        attr_accessor :description

        ##
        # @return [String] For lines measured in a unit other than "quantity", this code indicates the measurement system for the quantity field. If the line is measured in quantity, this field is null.
        attr_accessor :unit_measure_code

        ##
        # @return [Double] The price of a single unit for this line.
        attr_accessor :unit_price

        ##
        # @return [Double] The quantity of items for ths line.
        attr_accessor :quantity

        ##
        # @return [Double] The number of items that have been shipped.
        attr_accessor :quantity_shipped

        ##
        # @return [Double] The number of items that has been received.
        attr_accessor :quantity_received

        ##
        # @return [Double] The total amount for this line.
        attr_accessor :total_amount

        ##
        # @return [String] If this line is tax exempt, this code indicates the reason for the exemption.
        attr_accessor :exemption_code

        ##
        # @return [Date-time] If null, the products specified on this line were delivered on the same date as all other lines. If not null, this line was delivered or finalized on a different date than the overall invoice.
        attr_accessor :reporting_date

        ##
        # @return [String] Origination address for this invoice line, if this line item was originated from a different address
        attr_accessor :origin_address_line1

        ##
        # @return [String] Origination address for this invoice line, if this line item was originated from a different address
        attr_accessor :origin_address_line2

        ##
        # @return [String] Origination address for this invoice line, if this line item was originated from a different address
        attr_accessor :origin_address_line3

        ##
        # @return [String] Origination address for this invoice line, if this line item was originated from a different address
        attr_accessor :origin_address_city

        ##
        # @return [String] Origination address for this invoice line, if this line item was originated from a different address
        attr_accessor :origin_address_region

        ##
        # @return [String] Origination address for this invoice line, if this line item was originated from a different address
        attr_accessor :origin_address_postal_code

        ##
        # @return [String] Origination address for this invoice line, if this line item was originated from a different address This will be validated by the /api/v1/definitions/countries data set
        attr_accessor :origin_address_country

        ##
        # @return [Float] Origination address for this invoice line, if this line item was originated from a different address
        attr_accessor :origin_address_latitude

        ##
        # @return [Float] Origination address for this invoice line, if this line item was originated from a different address
        attr_accessor :origin_address_longitude

        ##
        # @return [String] Billing address for this invoice line, if this line item is to be billed to a different address
        attr_accessor :bill_to_address_line1

        ##
        # @return [String] Billing address for this invoice line, if this line item is to be billed to a different address
        attr_accessor :bill_to_address_line2

        ##
        # @return [String] Billing address for this invoice line, if this line item is to be billed to a different address
        attr_accessor :bill_to_address_line3

        ##
        # @return [String] Billing address for this invoice line, if this line item is to be billed to a different address
        attr_accessor :bill_to_address_city

        ##
        # @return [String] Billing address for this invoice line, if this line item is to be billed to a different address
        attr_accessor :bill_to_address_region

        ##
        # @return [String] Billing address for this invoice line, if this line item is to be billed to a different address
        attr_accessor :bill_to_address_postal_code

        ##
        # @return [String] Billing address for this invoice line, if this line item is to be billed to a different address This will be validated by the /api/v1/definitions/countries data set
        attr_accessor :bill_to_address_country

        ##
        # @return [Float] Billing address for this invoice line, if this line item is to be billed to a different address
        attr_accessor :bill_to_address_latitude

        ##
        # @return [Float] Billing address for this invoice line, if this line item is to be billed to a different address
        attr_accessor :bill_to_address_longitude

        ##
        # @return [String] Shipping address for this invoice line, if this line item is to be shipped to a different address
        attr_accessor :ship_to_address_line1

        ##
        # @return [String] Shipping address for this invoice line, if this line item is to be shipped to a different address
        attr_accessor :ship_to_address_line2

        ##
        # @return [String] Shipping address for this invoice line, if this line item is to be shipped to a different address
        attr_accessor :ship_to_address_line3

        ##
        # @return [String] Shipping address for this invoice line, if this line item is to be shipped to a different address
        attr_accessor :ship_to_address_city

        ##
        # @return [String] Shipping address for this invoice line, if this line item is to be shipped to a different address
        attr_accessor :ship_to_address_region

        ##
        # @return [String] Shipping address for this invoice line, if this line item is to be shipped to a different address
        attr_accessor :ship_to_address_postal_code

        ##
        # @return [String] Shipping address for this invoice line, if this line item is to be shipped to a different address This will be validated by the /api/v1/definitions/countries data set
        attr_accessor :ship_to_address_country

        ##
        # @return [Float] Shipping address for this invoice line, if this line item is to be shipped to a different address
        attr_accessor :ship_to_address_latitude

        ##
        # @return [Float] Shipping address for this invoice line, if this line item is to be shipped to a different address
        attr_accessor :ship_to_address_longitude

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
                'lineNumber' => @line_number,
                'productCode' => @product_code,
                'description' => @description,
                'unitMeasureCode' => @unit_measure_code,
                'unitPrice' => @unit_price,
                'quantity' => @quantity,
                'quantityShipped' => @quantity_shipped,
                'quantityReceived' => @quantity_received,
                'totalAmount' => @total_amount,
                'exemptionCode' => @exemption_code,
                'reportingDate' => @reporting_date,
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
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
