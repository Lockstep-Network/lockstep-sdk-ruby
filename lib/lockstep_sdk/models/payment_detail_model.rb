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

    # Contains detailed information about a Payment.
    class paymentDetailModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this Payment.
        attr_accessor :payment_id
        # @return [uuid] The ID of the customer to which this Payment belongs.
        attr_accessor :customer_id
        # @return [string] The name of the customer to which this Payment belongs.
        attr_accessor :customer_name
        # @return [string] Memo or reference text (ex. memo field on a check).
        attr_accessor :memo_text
        # @return [string] Reference code for the payment for the given Erp system.
        attr_accessor :reference_code
        # @return [string] The name of the Primary Contact for the Customer.
        attr_accessor :primary_contact
        # @return [string] The Email address of the Customer.
        attr_accessor :email
        # @return [double] Total amount of this Payment.
        attr_accessor :payment_amount
        # @return [double] Unapplied balance of this Payment.
        attr_accessor :unapplied_amount
        # @return [string] The type of payment, Payment or AP Payment.
        attr_accessor :payment_type
        # @return [date] The date of this Payment.
        attr_accessor :payment_date
        # @return [date] Payment post date.
        attr_accessor :post_date
        # @return [string] The phone number of the Customer's Primary Contact.
        attr_accessor :phone
        # @return [string] The fax number of the Customer's Primary Contact.
        attr_accessor :fax
        # @return [string] The first line of the address for the Customer's Primary Contact.
        attr_accessor :address1
        # @return [string] The second line of the address for the Customer's Primary Contact.
        attr_accessor :address2
        # @return [string] The third line of the address for the Customer's Primary Contact.
        attr_accessor :address3
        # @return [string] The city of the address for the Customer's Primary Contact.
        attr_accessor :city
        # @return [string] The state/region of the address for the Customer's Primary Contact.
        attr_accessor :state_region
        # @return [string] The postal/zip code of the address for the Customer's Primary Contact.
        attr_accessor :postal_code
        # @return [string] The 2 character country code of the address for the Customer's Primary Contact.
        attr_accessor :country_code
    end
end
