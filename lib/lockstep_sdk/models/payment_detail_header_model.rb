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

    # Contains group level payment data.
    class paymentDetailHeaderModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [int32] The total number of Customers.
        attr_accessor :customer_count
        # @return [double] The total amount collected.
        attr_accessor :amount_collected
        # @return [double] The total unapplied amount.
        attr_accessor :unapplied_amount
        # @return [int32] The number of paid invoices.
        attr_accessor :paid_invoice_count
        # @return [int32] The number of open invoices.
        attr_accessor :open_invoice_count
    end
end
