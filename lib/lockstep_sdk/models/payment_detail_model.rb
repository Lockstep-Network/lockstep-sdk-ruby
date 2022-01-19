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
    class PaymentDetailModel

        # Initialize the PaymentDetailModel using the provided prototype
        def initialize(params = {})
            @group_key = params.fetch(:group_key)
            @payment_id = params.fetch(:payment_id)
            @customer_id = params.fetch(:customer_id)
            @customer_name = params.fetch(:customer_name)
            @memo_text = params.fetch(:memo_text)
            @reference_code = params.fetch(:reference_code)
            @primary_contact = params.fetch(:primary_contact)
            @email = params.fetch(:email)
            @payment_amount = params.fetch(:payment_amount)
            @unapplied_amount = params.fetch(:unapplied_amount)
            @payment_type = params.fetch(:payment_type)
            @payment_date = params.fetch(:payment_date)
            @post_date = params.fetch(:post_date)
            @phone = params.fetch(:phone)
            @fax = params.fetch(:fax)
            @address1 = params.fetch(:address1)
            @address2 = params.fetch(:address2)
            @address3 = params.fetch(:address3)
            @city = params.fetch(:city)
            @state_region = params.fetch(:state_region)
            @postal_code = params.fetch(:postal_code)
            @country_code = params.fetch(:country_code)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The unique ID of this Payment.
        attr_accessor :payment_id
        # @return [Uuid] The ID of the customer to which this Payment belongs.
        attr_accessor :customer_id
        # @return [String] The name of the customer to which this Payment belongs.
        attr_accessor :customer_name
        # @return [String] Memo or reference text (ex. memo field on a check).
        attr_accessor :memo_text
        # @return [String] Reference code for the payment for the given Erp system.
        attr_accessor :reference_code
        # @return [String] The name of the Primary Contact for the Customer.
        attr_accessor :primary_contact
        # @return [String] The Email address of the Customer.
        attr_accessor :email
        # @return [Double] Total amount of this Payment.
        attr_accessor :payment_amount
        # @return [Double] Unapplied balance of this Payment.
        attr_accessor :unapplied_amount
        # @return [String] The type of payment, Payment or AP Payment.
        attr_accessor :payment_type
        # @return [Date] The date of this Payment.
        attr_accessor :payment_date
        # @return [Date] Payment post date.
        attr_accessor :post_date
        # @return [String] The phone number of the Customer's Primary Contact.
        attr_accessor :phone
        # @return [String] The fax number of the Customer's Primary Contact.
        attr_accessor :fax
        # @return [String] The first line of the address for the Customer's Primary Contact.
        attr_accessor :address1
        # @return [String] The second line of the address for the Customer's Primary Contact.
        attr_accessor :address2
        # @return [String] The third line of the address for the Customer's Primary Contact.
        attr_accessor :address3
        # @return [String] The city of the address for the Customer's Primary Contact.
        attr_accessor :city
        # @return [String] The state/region of the address for the Customer's Primary Contact.
        attr_accessor :state_region
        # @return [String] The postal/zip code of the address for the Customer's Primary Contact.
        attr_accessor :postal_code
        # @return [String] The 2 character country code of the address for the Customer's Primary Contact.
        attr_accessor :country_code
    end
end
