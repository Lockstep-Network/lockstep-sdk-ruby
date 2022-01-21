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

    # Contains summary information for a Payment
    class PaymentSummaryModel

        # Initialize the PaymentSummaryModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @payment_id = params.dig(:payment_id)
            @memo_text = params.dig(:memo_text)
            @reference_code = params.dig(:reference_code)
            @payment_type = params.dig(:payment_type)
            @payment_date = params.dig(:payment_date)
            @payment_amount = params.dig(:payment_amount)
            @unapplied_amount = params.dig(:unapplied_amount)
            @invoice_count = params.dig(:invoice_count)
            @total_payments_applied = params.dig(:total_payments_applied)
            @invoice_list = params.dig(:invoice_list)
            @invoice_id_list = params.dig(:invoice_id_list)
            @customer_name = params.dig(:customer_name)
            @customer_id = params.dig(:customer_id)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The id of the payment
        attr_accessor :payment_id
        # @return [String] Memo or reference text (ex. memo field on a check).
        attr_accessor :memo_text
        # @return [String] Reference code for the payment for the given Erp system.
        attr_accessor :reference_code
        # @return [String] The type of payment, Payment or AP Payment.
        attr_accessor :payment_type
        # @return [Date] The date of this payment.
        attr_accessor :payment_date
        # @return [Double] Total amount of this payment.
        attr_accessor :payment_amount
        # @return [Double] Unapplied balance of this payment.
        attr_accessor :unapplied_amount
        # @return [Int32] The number of invoices associated to this payment.
        attr_accessor :invoice_count
        # @return [Double] The number of payments applied to this payment.
        attr_accessor :total_payments_applied
        # @return [String] The reference codes of the invoices associated to this payment.
        attr_accessor :invoice_list
        # @return [Uuid] The ids of the invoices associated to this payment.
        attr_accessor :invoice_id_list
        # @return [String] The name of the customer for this payment.
        attr_accessor :customer_name
        # @return [Uuid] The id of the customer for this payment.
        attr_accessor :customer_id

        def as_json(options={})
            {
                'groupKey' => @group_key,
                'paymentId' => @payment_id,
                'memoText' => @memo_text,
                'referenceCode' => @reference_code,
                'paymentType' => @payment_type,
                'paymentDate' => @payment_date,
                'paymentAmount' => @payment_amount,
                'unappliedAmount' => @unapplied_amount,
                'invoiceCount' => @invoice_count,
                'totalPaymentsApplied' => @total_payments_applied,
                'invoiceList' => @invoice_list,
                'invoiceIdList' => @invoice_id_list,
                'customerName' => @customer_name,
                'customerId' => @customer_id,
            }
        end

        def to_json(*options)
            [#{as_json(*options).to_json(*options)}]
        end
    end
end
