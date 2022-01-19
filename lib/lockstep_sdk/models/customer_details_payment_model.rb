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

    # Customer payment collected information
    class customerDetailsPaymentModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] Unique identifier for payment
        attr_accessor :payment_id
        # @return [uuid] Unique identifier for payment applied
        attr_accessor :payment_applied_id
        # @return [string] Payment type
        attr_accessor :payment_type
        # @return [uuid] Unique identifier for invoice payment is associated with
        attr_accessor :invoice_id
        # @return [string] Invoice type payment is associated with
        attr_accessor :invoice_type_code
        # @return [string] Invoice reference code payment is associated with
        attr_accessor :invoice_reference_code
        # @return [double] Invoice total amount payment is associated with
        attr_accessor :invoice_total_amount
        # @return [date-time] Date payment placed
        attr_accessor :payment_date
        # @return [double] Amount payment was made for
        attr_accessor :payment_amount
    end
end
