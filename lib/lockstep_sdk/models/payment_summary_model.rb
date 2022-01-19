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

    # Contains summary information for a Payment
    class paymentSummaryModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The id of the payment
        attr_accessor :payment_id
        # @return [string] Memo or reference text (ex. memo field on a check).
        attr_accessor :memo_text
        # @return [string] Reference code for the payment for the given Erp system.
        attr_accessor :reference_code
        # @return [string] The type of payment, Payment or AP Payment.
        attr_accessor :payment_type
        # @return [date] The date of this payment.
        attr_accessor :payment_date
        # @return [double] Total amount of this payment.
        attr_accessor :payment_amount
        # @return [double] Unapplied balance of this payment.
        attr_accessor :unapplied_amount
        # @return [int32] The number of invoices associated to this payment.
        attr_accessor :invoice_count
        # @return [double] The number of payments applied to this payment.
        attr_accessor :total_payments_applied
        # @return [string] The reference codes of the invoices associated to this payment.
        attr_accessor :invoice_list
        # @return [uuid] The ids of the invoices associated to this payment.
        attr_accessor :invoice_id_list
        # @return [string] The name of the customer for this payment.
        attr_accessor :customer_name
        # @return [uuid] The id of the customer for this payment.
        attr_accessor :customer_id
    end
end
