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

    # Contains group level payment data.
    class PaymentDetailHeaderModel

        # Initialize the PaymentDetailHeaderModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @customer_count = params.dig(:customer_count)
            @amount_collected = params.dig(:amount_collected)
            @unapplied_amount = params.dig(:unapplied_amount)
            @paid_invoice_count = params.dig(:paid_invoice_count)
            @open_invoice_count = params.dig(:open_invoice_count)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Int32] The total number of Customers.
        attr_accessor :customer_count
        # @return [Double] The total amount collected.
        attr_accessor :amount_collected
        # @return [Double] The total unapplied amount.
        attr_accessor :unapplied_amount
        # @return [Int32] The number of paid invoices.
        attr_accessor :paid_invoice_count
        # @return [Int32] The number of open invoices.
        attr_accessor :open_invoice_count

        def as_json(options={})
            {
                'groupKey' => @group_key,
                'customerCount' => @customer_count,
                'amountCollected' => @amount_collected,
                'unappliedAmount' => @unapplied_amount,
                'paidInvoiceCount' => @paid_invoice_count,
                'openInvoiceCount' => @open_invoice_count,
            }
        end

        def to_json(*options)
            as_json(*options).to_json(*options)
        end
    end
end
