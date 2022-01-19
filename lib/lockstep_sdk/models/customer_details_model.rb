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

    # Contains customer details data
    class customerDetailsModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this customer
        attr_accessor :customer_id
        # @return [string] The unique ID of this customer
        attr_accessor :name
        # @return [string] Customer address info
        attr_accessor :address1
        # @return [string] Customer address info
        attr_accessor :address2
        # @return [string] Customer address info
        attr_accessor :address3
        # @return [string] Customer address info
        attr_accessor :city
        # @return [string] Customer address info
        attr_accessor :state
        # @return [string] Customer address info
        attr_accessor :postal_code
        # @return [string] Customer address country
        attr_accessor :country
        # @return [string] Customer phone number
        attr_accessor :phone_number
        # @return [string] Customer fax number
        attr_accessor :fax_number
        # @return [string] Customer AR email address
        attr_accessor :email
        # @return [uuid] Customer primary contact id
        attr_accessor :contact_id
        # @return [string] Customer primary contact name
        attr_accessor :contact_name
        # @return [string] Customer primary contact email address
        attr_accessor :contact_email
        # @return [int32] Customer number of outstanding invoices
        attr_accessor :outstanding_invoices
        # @return [double] Customer total outstanding invoice amount
        attr_accessor :outstanding_amount
        # @return [double] Customer total past due amount
        attr_accessor :amount_past_due
        # @return [customerDetailsPaymentModel] Customer payments collected
        attr_accessor :payments
    end
end
