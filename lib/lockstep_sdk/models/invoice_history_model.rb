#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk

    # An Invoice represents a bill sent from one company to another.  The Lockstep Platform tracks changes to
    # each Invoice so that you can observe the changes over time.  You can view the InvoiceHistory list to
    # monitor and observe the changes of this Invoice and track the dates when changes occurred.
    class invoiceHistoryModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID number of this invoice history entry.
        attr_accessor :invoice_history_id
        # @return [uuid] The unique ID of the Invoice represented by this history entry. This ID was automatically assigned by Lockstep to the Invoice record when it was added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :invoice_id
        # @return [uuid] The ID number of the company that created this invoice.
        attr_accessor :company_id
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_id
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [string] The purchase order code as it exists in the user's ERP or accounting system.
        attr_accessor :purchase_order_code
        # @return [string] An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :reference_code
        # @return [string] A code identifying the salesperson responsible for writing this invoice.
        attr_accessor :salesperson_code
        # @return [string] A string identifying the salesperson responsible for writing this invoice.
        attr_accessor :salesperson_name
        # @return [string] A code identifying the type of this invoice.
        attr_accessor :invoice_type_code
        # @return [string] A code identifying the status of this invoice.
        attr_accessor :invoice_status_code
        # @return [string] A code identifying the terms given to the purchaser.
        attr_accessor :terms_code
        # @return [string] If the customer negotiated any special terms different from the standard terms above, describe them here.
        attr_accessor :special_terms
        # @return [string] The three-character ISO 4217 currency code used for this invoice. This will be validated by the /api/v1/currencies data set
        attr_accessor :currency_code
        # @return [double] The total value of this invoice, inclusive of all taxes and line items.
        attr_accessor :total_amount
        # @return [double] The total sales (or transactional) tax calculated for this invoice.
        attr_accessor :sales_tax_amount
        # @return [double] The total discounts given by the seller to the buyer on this invoice.
        attr_accessor :discount_amount
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstanding_balance_amount
        # @return [date] The reporting date for this invoice.
        attr_accessor :invoice_date
        # @return [date] The date when discounts were adjusted for this invoice.
        attr_accessor :discount_date
        # @return [date] The date when this invoice posted to the company's general ledger.
        attr_accessor :posted_date
        # @return [date] The date when the invoice was closed and finalized after completion of all payments and delivery of all products and services.
        attr_accessor :invoice_closed_date
        # @return [date] The date when the remaining outstanding balance is due.
        attr_accessor :payment_due_date
        # @return [date-time] The date and time when this record was imported from the user's ERP or accounting system.
        attr_accessor :imported_date
        # @return [uuid] The ID number of the invoice's origination address
        attr_accessor :primary_origin_address_id
        # @return [uuid] The ID number of the invoice's bill-to address
        attr_accessor :primary_bill_to_address_id
        # @return [uuid] The ID number of the invoice's ship-to address
        attr_accessor :primary_ship_to_address_id
        # @return [date-time] The date on which this invoice record was created.
        attr_accessor :created
        # @return [uuid] The ID number of the user who created this invoice.
        attr_accessor :created_user_id
        # @return [date-time] The date on which this invoice record was last modified.
        attr_accessor :modified
        # @return [uuid] The ID number of the user who most recently modified this invoice.
        attr_accessor :modified_user_id
    end
end
