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
    class CustomerDetailsPaymentModel

        # Initialize the CustomerDetailsPaymentModel using the provided prototype
        def initialize(params = {})
            @group_key = params.fetch(:group_key)
            @payment_id = params.fetch(:payment_id)
            @payment_applied_id = params.fetch(:payment_applied_id)
            @payment_type = params.fetch(:payment_type)
            @invoice_id = params.fetch(:invoice_id)
            @invoice_type_code = params.fetch(:invoice_type_code)
            @invoice_reference_code = params.fetch(:invoice_reference_code)
            @invoice_total_amount = params.fetch(:invoice_total_amount)
            @payment_date = params.fetch(:payment_date)
            @payment_amount = params.fetch(:payment_amount)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] Unique identifier for payment
        attr_accessor :payment_id
        # @return [Uuid] Unique identifier for payment applied
        attr_accessor :payment_applied_id
        # @return [String] Payment type
        attr_accessor :payment_type
        # @return [Uuid] Unique identifier for invoice payment is associated with
        attr_accessor :invoice_id
        # @return [String] Invoice type payment is associated with
        attr_accessor :invoice_type_code
        # @return [String] Invoice reference code payment is associated with
        attr_accessor :invoice_reference_code
        # @return [Double] Invoice total amount payment is associated with
        attr_accessor :invoice_total_amount
        # @return [Date-time] Date payment placed
        attr_accessor :payment_date
        # @return [Double] Amount payment was made for
        attr_accessor :payment_amount
    end
end
