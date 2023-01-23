#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2023 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2023 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # Contains company details data
    class CompanyDetailsModel

        ##
        # Initialize the CompanyDetailsModel using the provided prototype
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
            @group_base_currency_code = params.dig(:group_base_currency_code)
            @outstanding_amount = params.dig(:outstanding_amount)
            @amount_past_due = params.dig(:amount_past_due)
            @payments = params.dig(:payments)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The unique ID of this company
        attr_accessor :customer_id

        ##
        # @return [String] The unique ID of this company
        attr_accessor :name

        ##
        # @return [String] Company address info
        attr_accessor :address1

        ##
        # @return [String] Company address info
        attr_accessor :address2

        ##
        # @return [String] Company address info
        attr_accessor :address3

        ##
        # @return [String] Company address info
        attr_accessor :city

        ##
        # @return [String] Company address info
        attr_accessor :state

        ##
        # @return [String] Company address info
        attr_accessor :postal_code

        ##
        # @return [String] Company address country
        attr_accessor :country

        ##
        # @return [String] Company phone number
        attr_accessor :phone_number

        ##
        # @return [String] Company fax number
        attr_accessor :fax_number

        ##
        # @return [String] Company email address
        attr_accessor :email

        ##
        # @return [Uuid] Company primary contact id
        attr_accessor :contact_id

        ##
        # @return [String] Company primary contact name
        attr_accessor :contact_name

        ##
        # @return [String] Company primary contact email address
        attr_accessor :contact_email

        ##
        # @return [Int32] Company number of outstanding invoices
        attr_accessor :outstanding_invoices

        ##
        # @return [String] The group's base currency code.
        attr_accessor :group_base_currency_code

        ##
        # @return [Double] Company total outstanding invoice amount in the group's base currency.
        attr_accessor :outstanding_amount

        ##
        # @return [Double] Company total past due amount in the group's base currency.
        attr_accessor :amount_past_due

        ##
        # @return [CompanyDetailsPaymentModel] Company payments collected
        attr_accessor :payments

        ##
        # @return [object] This object as a JSON key-value structure
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
                'groupBaseCurrencyCode' => @group_base_currency_code,
                'outstandingAmount' => @outstanding_amount,
                'amountPastDue' => @amount_past_due,
                'payments' => @payments,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
