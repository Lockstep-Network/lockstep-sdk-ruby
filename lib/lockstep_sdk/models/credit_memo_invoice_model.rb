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
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    # Contains information about a credit memo invoice
    class CreditMemoInvoiceModel

        # Initialize the CreditMemoInvoiceModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @credit_memo_applied_id = params.dig(:credit_memo_applied_id)
            @invoice_id = params.dig(:invoice_id)
            @credit_memo_invoice_id = params.dig(:credit_memo_invoice_id)
            @apply_to_invoice_date = params.dig(:apply_to_invoice_date)
            @credit_memo_applied_amount = params.dig(:credit_memo_applied_amount)
            @reference_code = params.dig(:reference_code)
            @company_id = params.dig(:company_id)
            @customer_id = params.dig(:customer_id)
            @invoice_status_code = params.dig(:invoice_status_code)
            @total_amount = params.dig(:total_amount)
            @outstanding_balance_amount = params.dig(:outstanding_balance_amount)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :credit_memo_applied_id
        # @return [Uuid] The id of the invoice
        attr_accessor :invoice_id
        # @return [Uuid] The id of the credit memo invoice
        attr_accessor :credit_memo_invoice_id
        # @return [Date] Date invoice applied to credit memo.
        attr_accessor :apply_to_invoice_date
        # @return [Double] Amount applied to credit memo.
        attr_accessor :credit_memo_applied_amount
        # @return [String] An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :reference_code
        # @return [Uuid] The ID number of the company that created this invoice.
        attr_accessor :company_id
        # @return [Uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_id
        # @return [String] A code identifying the status of this invoice.
        attr_accessor :invoice_status_code
        # @return [Double] The total value of this invoice, inclusive of all taxes and line items.
        attr_accessor :total_amount
        # @return [Double] The remaining balance value of this invoice.
        attr_accessor :outstanding_balance_amount

        def as_json(options={})
            {
                'groupKey' => @group_key,
                'creditMemoAppliedId' => @credit_memo_applied_id,
                'invoiceId' => @invoice_id,
                'creditMemoInvoiceId' => @credit_memo_invoice_id,
                'applyToInvoiceDate' => @apply_to_invoice_date,
                'creditMemoAppliedAmount' => @credit_memo_applied_amount,
                'referenceCode' => @reference_code,
                'companyId' => @company_id,
                'customerId' => @customer_id,
                'invoiceStatusCode' => @invoice_status_code,
                'totalAmount' => @total_amount,
                'outstandingBalanceAmount' => @outstanding_balance_amount,
            }
        end

        def to_json(*options)
            [#{as_json(*options).to_json(*options)}]
        end
    end
end
