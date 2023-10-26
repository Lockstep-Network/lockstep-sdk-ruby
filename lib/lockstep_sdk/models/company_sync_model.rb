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
    # The CompanySyncModel represents information coming into Lockstep from an external financial system or other
    # enterprise resource planning system.  To import data from an external system, convert your original data into
    # the CompanySyncModel format and call the [Upload Sync File API](https://developer.lockstep.io/reference/post_api-v1-sync-zip).
    # This API retrieves all of the data you uploaded in a compressed ZIP file and imports it into the Lockstep
    # platform.
    #
    # Once imported, this record will be available in the Lockstep API as a [CompanyModel](https://developer.lockstep.io/docs/companymodel).
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class CompanySyncModel

        ##
        # Initialize the CompanySyncModel using the provided prototype
        def initialize(params = {})
            @on_match_action = params.dig(:on_match_action)
            @network_id = params.dig(:network_id)
            @erp_key = params.dig(:erp_key)
            @company_name = params.dig(:company_name)
            @company_type = params.dig(:company_type)
            @parent_company_erp_key = params.dig(:parent_company_erp_key)
            @parent_company_network_id = params.dig(:parent_company_network_id)
            @is_active = params.dig(:is_active)
            @default_currency_code = params.dig(:default_currency_code)
            @company_logo_url = params.dig(:company_logo_url)
            @primary_contact_erp_key = params.dig(:primary_contact_erp_key)
            @primary_contact_network_id = params.dig(:primary_contact_network_id)
            @address1 = params.dig(:address1)
            @address2 = params.dig(:address2)
            @address3 = params.dig(:address3)
            @city = params.dig(:city)
            @state_region = params.dig(:state_region)
            @postal_code = params.dig(:postal_code)
            @country = params.dig(:country)
            @phone_number = params.dig(:phone_number)
            @fax_number = params.dig(:fax_number)
            @created = params.dig(:created)
            @modified = params.dig(:modified)
            @tax_id = params.dig(:tax_id)
            @duns_number = params.dig(:duns_number)
            @ap_email_address = params.dig(:ap_email_address)
            @ar_email_address = params.dig(:ar_email_address)
            @preferred_delivery_method = params.dig(:preferred_delivery_method)
            @email_address = params.dig(:email_address)
            @external_reference = params.dig(:external_reference)
            @company_registration_number = params.dig(:company_registration_number)
        end

        ##
        # @return [MatchAction] Indicates what action to take when an existing object has been found during the sync process.
        attr_accessor :on_match_action

        ##
        # @return [Uuid] The unique identifier of this object in the Sage Network platform.
        attr_accessor :network_id

        ##
        # @return [String] This is the primary key of the Company record. For this field, you should use whatever the company's unique identifying number is in the originating system. Search for a unique, non-changing number within the originating financial system for this record. Example: If you store your company records in a database, whatever the primary key for the company table is in the database should be the `ErpKey`. Example: If you use a financial system such as QuickBooks or Xero, look for the primary ID number of the company record within that financial system. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] A friendly, short name of the company.
        attr_accessor :company_name

        ##
        # @return [String] This field indicates the type of company. It can be one of a limited number of values: `Company`, `Customer`, `Group`, `Vendor`, or `Third Party`. A company that represents both a customer and a vendor is identified as a `CustomerVendor`. When loading data into Lockstep, you should focus on the distinction between a company that is part of your own enterprise, or a company that is external to your enterprise. For a company that is within your enterprise, you should set this value to be `Company`. For a company that is external to your enterprise, you should set this value to either `Customer`, `Vendor`, `Third Party`, or `CustomerVendor`. If you don't know what value to choose, select `CustomerVendor`.
        attr_accessor :company_type

        ##
        # @return [String] If this company has a parent company, identify the parent company's `ErpKey` value here. This value should be the original primary key or unique ID of the parent company to this company belongs. This value should match the original ErpKey field on the parent company. If this company is not a child company, leave this field null.
        attr_accessor :parent_company_erp_key

        ##
        # @return [Uuid] The network id of the parent Company.
        attr_accessor :parent_company_network_id

        ##
        # @return [Boolean] This flag indicates whether the company is currently active. An inactive company will be hidden from the user interface but will still be available for querying.
        attr_accessor :is_active

        ##
        # @return [String] The default currency code for transactions related to this company. For a list of currency codes, see [Query Currencies](https://developer.lockstep.io/reference/get_api-v1-definitions-currencies).
        attr_accessor :default_currency_code

        ##
        # @return [String] The URL of this company's logo, if known.
        attr_accessor :company_logo_url

        ##
        # @return [String] The `ErpKey` of the primary contact for this company. This value should match the `ErpKey` value of the [Importing Contacts](https://developer.lockstep.io/docs/importing-contacts) record for the contact table.
        attr_accessor :primary_contact_erp_key

        ##
        # @return [Uuid] The network id of the primary Contact.
        attr_accessor :primary_contact_network_id

        ##
        # @return [String] The company's primary mailing address information
        attr_accessor :address1

        ##
        # @return [String] The company's primary mailing address information
        attr_accessor :address2

        ##
        # @return [String] The company's primary mailing address information
        attr_accessor :address3

        ##
        # @return [String] The company's primary mailing address information
        attr_accessor :city

        ##
        # @return [String] The company's primary mailing address information
        attr_accessor :state_region

        ##
        # @return [String] The company's primary mailing address information
        attr_accessor :postal_code

        ##
        # @return [String] The company's primary mailing address information
        attr_accessor :country

        ##
        # @return [String] The main phone number of this company.
        attr_accessor :phone_number

        ##
        # @return [String] The main fax number of this company.
        attr_accessor :fax_number

        ##
        # @return [Date-time] If known, the date when this record was created according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a created-date, leave this field null.
        attr_accessor :created

        ##
        # @return [Date-time] If known, the date when this record was most recently modified according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a most-recently-modified-date, leave this field null.
        attr_accessor :modified

        ##
        # @return [String] The company's Tax ID number for the appropriate government for this company.
        attr_accessor :tax_id

        ##
        # @return [String] The Dun and Bradstreet number for this company, if known.
        attr_accessor :duns_number

        ##
        # @return [String] If you know the AP (accounts payable) email address of this company, fill it in here. This is the email address where you would send questions to the company if the company owed you money.
        attr_accessor :ap_email_address

        ##
        # @return [String] If you know the AR (accounts receivable) email address of this company, fill it in here. This is the email address where you would send questions to the company if you owed this company money.
        attr_accessor :ar_email_address

        ##
        # @return [String] Indicates the preferred invoice delivery method. Examples include Print, Email, Fax
        attr_accessor :preferred_delivery_method

        ##
        # @return [String] The company email address.
        attr_accessor :email_address

        ##
        # @return [String] An external reference that identifies the Company from the originating ERP system, separate from the ErpKey.
        attr_accessor :external_reference

        ##
        # @return [String] A unique identification number assigned to the company by the national registration office.
        attr_accessor :company_registration_number

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'onMatchAction' => @on_match_action,
                'networkId' => @network_id,
                'erpKey' => @erp_key,
                'companyName' => @company_name,
                'companyType' => @company_type,
                'parentCompanyErpKey' => @parent_company_erp_key,
                'parentCompanyNetworkId' => @parent_company_network_id,
                'isActive' => @is_active,
                'defaultCurrencyCode' => @default_currency_code,
                'companyLogoUrl' => @company_logo_url,
                'primaryContactErpKey' => @primary_contact_erp_key,
                'primaryContactNetworkId' => @primary_contact_network_id,
                'address1' => @address1,
                'address2' => @address2,
                'address3' => @address3,
                'city' => @city,
                'stateRegion' => @state_region,
                'postalCode' => @postal_code,
                'country' => @country,
                'phoneNumber' => @phone_number,
                'faxNumber' => @fax_number,
                'created' => @created,
                'modified' => @modified,
                'taxId' => @tax_id,
                'dunsNumber' => @duns_number,
                'apEmailAddress' => @ap_email_address,
                'arEmailAddress' => @ar_email_address,
                'preferredDeliveryMethod' => @preferred_delivery_method,
                'emailAddress' => @email_address,
                'externalReference' => @external_reference,
                'companyRegistrationNumber' => @company_registration_number,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
