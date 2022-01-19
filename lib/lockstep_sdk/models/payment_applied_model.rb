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

    # A Payment Application is created by a business who receives a Payment from a customer.  A customer may make
    # a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be
    # made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected
    # to which Payments and for which amounts.
    class paymentAppliedModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :payment_applied_id
        # @return [uuid] The Invoice this payment is applied to.
        attr_accessor :invoice_id
        # @return [uuid] The Payment applied to the invoice.
        attr_accessor :payment_id
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [int32] Reference number for the payment applied.
        attr_accessor :entry_number
        # @return [date-time] Date payment applied to invoice.
        attr_accessor :apply_to_invoice_date
        # @return [double] Amount applied to invoice.
        attr_accessor :payment_applied_amount
        # @return [date-time] Date payment applied record was created.
        attr_accessor :created
        # @return [uuid] The id of the user who created this applied payment.
        attr_accessor :created_user_id
        # @return [date-time] Date payment applied record was modified.
        attr_accessor :modified
        # @return [uuid] The id of the user who modified this applied payment.
        attr_accessor :modified_user_id
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [invoiceModel] The invoice associated with this applied payment.
        attr_accessor :invoice
    end
end
