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

    # Contains customer details data
    class CustomerDetailsModel

        # Initialize the CustomerDetailsModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @customer_id = params.dig(:customer_id)
            @name = params.dig(:name)
            @address1 = params.dig(:address1)
            @address2 = params.dig(:address2)
            @address3 = params.dig(:address3)
            @city = params.dig(:city)
            @state = params.dig(:state)
            @postal_code = params.dig(:postal_code)
            @country = params.dig(:country)
            @phone_number = params.dig(:phone_number)
            @fax_number = params.dig(:fax_number)
            @email = params.dig(:email)
            @contact_id = params.dig(:contact_id)
            @contact_name = params.dig(:contact_name)
            @contact_email = params.dig(:contact_email)
            @outstanding_invoices = params.dig(:outstanding_invoices)
            @outstanding_amount = params.dig(:outstanding_amount)
            @amount_past_due = params.dig(:amount_past_due)
            @payments = params.dig(:payments)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The unique ID of this customer
        attr_accessor :customer_id
        # @return [String] The unique ID of this customer
        attr_accessor :name
        # @return [String] Customer address info
        attr_accessor :address1
        # @return [String] Customer address info
        attr_accessor :address2
        # @return [String] Customer address info
        attr_accessor :address3
        # @return [String] Customer address info
        attr_accessor :city
        # @return [String] Customer address info
        attr_accessor :state
        # @return [String] Customer address info
        attr_accessor :postal_code
        # @return [String] Customer address country
        attr_accessor :country
        # @return [String] Customer phone number
        attr_accessor :phone_number
        # @return [String] Customer fax number
        attr_accessor :fax_number
        # @return [String] Customer AR email address
        attr_accessor :email
        # @return [Uuid] Customer primary contact id
        attr_accessor :contact_id
        # @return [String] Customer primary contact name
        attr_accessor :contact_name
        # @return [String] Customer primary contact email address
        attr_accessor :contact_email
        # @return [Int32] Customer number of outstanding invoices
        attr_accessor :outstanding_invoices
        # @return [Double] Customer total outstanding invoice amount
        attr_accessor :outstanding_amount
        # @return [Double] Customer total past due amount
        attr_accessor :amount_past_due
        # @return [CustomerDetailsPaymentModel] Customer payments collected
        attr_accessor :payments

        def as_json(options={})
            {
                'groupKey' => @group_key,
                'customerId' => @customer_id,
                'name' => @name,
                'address1' => @address1,
                'address2' => @address2,
                'address3' => @address3,
                'city' => @city,
                'state' => @state,
                'postalCode' => @postal_code,
                'country' => @country,
                'phoneNumber' => @phone_number,
                'faxNumber' => @fax_number,
                'email' => @email,
                'contactId' => @contact_id,
                'contactName' => @contact_name,
                'contactEmail' => @contact_email,
                'outstandingInvoices' => @outstanding_invoices,
                'outstandingAmount' => @outstanding_amount,
                'amountPastDue' => @amount_past_due,
                'payments' => @payments,
            }
        end

        def to_json(*options)
            [#{as_json(*options).to_json(*options)}]
        end
    end
end
