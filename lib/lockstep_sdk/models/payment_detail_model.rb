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
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # Contains detailed information about a Payment.
    class PaymentDetailModel

        ##
        # Initialize the PaymentDetailModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @payment_id = params.dig(:payment_id)
            @customer_id = params.dig(:customer_id)
            @customer_name = params.dig(:customer_name)
            @memo_text = params.dig(:memo_text)
            @reference_code = params.dig(:reference_code)
            @primary_contact = params.dig(:primary_contact)
            @email = params.dig(:email)
            @payment_amount = params.dig(:payment_amount)
            @unapplied_amount = params.dig(:unapplied_amount)
            @payment_type = params.dig(:payment_type)
            @payment_date = params.dig(:payment_date)
            @post_date = params.dig(:post_date)
            @phone = params.dig(:phone)
            @fax = params.dig(:fax)
            @address1 = params.dig(:address1)
            @address2 = params.dig(:address2)
            @address3 = params.dig(:address3)
            @city = params.dig(:city)
            @state_region = params.dig(:state_region)
            @postal_code = params.dig(:postal_code)
            @country_code = params.dig(:country_code)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The unique ID of this Payment.
        attr_accessor :payment_id

        ##
        # @return [Uuid] The ID of the customer to which this Payment belongs.
        attr_accessor :customer_id

        ##
        # @return [String] The name of the customer to which this Payment belongs.
        attr_accessor :customer_name

        ##
        # @return [String] Memo or reference text (ex. memo field on a check).
        attr_accessor :memo_text

        ##
        # @return [String] Reference code for the payment for the given Erp system.
        attr_accessor :reference_code

        ##
        # @return [String] The name of the Primary Contact for the Customer.
        attr_accessor :primary_contact

        ##
        # @return [String] The Email address of the Customer.
        attr_accessor :email

        ##
        # @return [Double] Total amount of this Payment.
        attr_accessor :payment_amount

        ##
        # @return [Double] Unapplied balance of this Payment.
        attr_accessor :unapplied_amount

        ##
        # @return [String] The type of payment, Payment or AP Payment.
        attr_accessor :payment_type

        ##
        # @return [Date] The date of this Payment.
        attr_accessor :payment_date

        ##
        # @return [Date] Payment post date.
        attr_accessor :post_date

        ##
        # @return [String] The phone number of the Customer's Primary Contact.
        attr_accessor :phone

        ##
        # @return [String] The fax number of the Customer's Primary Contact.
        attr_accessor :fax

        ##
        # @return [String] The first line of the address for the Customer's Primary Contact.
        attr_accessor :address1

        ##
        # @return [String] The second line of the address for the Customer's Primary Contact.
        attr_accessor :address2

        ##
        # @return [String] The third line of the address for the Customer's Primary Contact.
        attr_accessor :address3

        ##
        # @return [String] The city of the address for the Customer's Primary Contact.
        attr_accessor :city

        ##
        # @return [String] The state/region of the address for the Customer's Primary Contact.
        attr_accessor :state_region

        ##
        # @return [String] The postal/zip code of the address for the Customer's Primary Contact.
        attr_accessor :postal_code

        ##
        # @return [String] The 2 character country code of the address for the Customer's Primary Contact.
        attr_accessor :country_code

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'paymentId' => @payment_id,
                'customerId' => @customer_id,
                'customerName' => @customer_name,
                'memoText' => @memo_text,
                'referenceCode' => @reference_code,
                'primaryContact' => @primary_contact,
                'email' => @email,
                'paymentAmount' => @payment_amount,
                'unappliedAmount' => @unapplied_amount,
                'paymentType' => @payment_type,
                'paymentDate' => @payment_date,
                'postDate' => @post_date,
                'phone' => @phone,
                'fax' => @fax,
                'address1' => @address1,
                'address2' => @address2,
                'address3' => @address3,
                'city' => @city,
                'stateRegion' => @state_region,
                'postalCode' => @postal_code,
                'countryCode' => @country_code,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
