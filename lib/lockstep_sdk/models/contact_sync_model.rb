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
    # The ContactSyncModel represents information coming into Lockstep from an external financial system or other
    # enterprise resource planning system.  To import data from an external system, convert your original data into
    # the ContactSyncModel format and call the [Upload Sync File API](https://developer.lockstep.io/reference/post_api-v1-sync-zip).
    # This API retrieves all of the data you uploaded in a compressed ZIP file and imports it into the Lockstep
    # platform.
    #
    # Once imported, this record will be available in the Lockstep API as a [ContactModel](https://developer.lockstep.io/docs/contactmodel).
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class ContactSyncModel

        ##
        # Initialize the ContactSyncModel using the provided prototype
        def initialize(params = {})
            @erp_key = params.dig(:erp_key)
            @company_erp_key = params.dig(:company_erp_key)
            @contact_name = params.dig(:contact_name)
            @contact_code = params.dig(:contact_code)
            @title = params.dig(:title)
            @role_code = params.dig(:role_code)
            @email_address = params.dig(:email_address)
            @phone = params.dig(:phone)
            @fax = params.dig(:fax)
            @address1 = params.dig(:address1)
            @address2 = params.dig(:address2)
            @address3 = params.dig(:address3)
            @city = params.dig(:city)
            @state_region = params.dig(:state_region)
            @postal_code = params.dig(:postal_code)
            @country_code = params.dig(:country_code)
            @is_active = params.dig(:is_active)
            @webpage_url = params.dig(:webpage_url)
            @picture_url = params.dig(:picture_url)
            @created = params.dig(:created)
            @modified = params.dig(:modified)
        end

        ##
        # @return [String] This is the primary key of the Contact record. For this field, you should use whatever the contact's unique identifying number is in the originating system. Search for a unique, non-changing number within the originating financial system for this record. Example: If you store your contact records in a database, whatever the primary key for the contact table is in the database should be the "ErpKey". As some ERP systems don't maintain a unique key for Contacts, we also support syncing Contacts with ERP keys of the form {prefix}|{index}, for example ContactPrefix|1, ContactPrefix|2 and so on. For this reason, please ensure that your Contact ERP keys don't otherwise contain the '|' symbol or that it is replaced by an alternate symbol if they do. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] The original primary key or unique ID of the company to which this contact belongs. This value should match the [Company ErpKey](https://developer.lockstep.io/docs/importing-companies#erpkey) field on the [CompanySyncModel](https://developer.lockstep.io/docs/importing-companies).
        attr_accessor :company_erp_key

        ##
        # @return [String] The name of the contact.
        attr_accessor :contact_name

        ##
        # @return [String] A friendly human-readable code that describes this Contact.
        attr_accessor :contact_code

        ##
        # @return [String] The title of the contact.
        attr_accessor :title

        ##
        # @return [String] The role code for the contact.
        attr_accessor :role_code

        ##
        # @return [String] The email address of the contact.
        attr_accessor :email_address

        ##
        # @return [String] The phone number of the contact.
        attr_accessor :phone

        ##
        # @return [String] The fax number of the contact.
        attr_accessor :fax

        ##
        # @return [String] The mailing address information for this contact.
        attr_accessor :address1

        ##
        # @return [String] The mailing address information for this contact.
        attr_accessor :address2

        ##
        # @return [String] The mailing address information for this contact.
        attr_accessor :address3

        ##
        # @return [String] The mailing address information for this contact.
        attr_accessor :city

        ##
        # @return [String] The mailing address information for this contact.
        attr_accessor :state_region

        ##
        # @return [String] The mailing address information for this contact.
        attr_accessor :postal_code

        ##
        # @return [String] The mailing address information for this contact.
        attr_accessor :country_code

        ##
        # @return [Boolean] True if this contact is considered "active".
        attr_accessor :is_active

        ##
        # @return [String] A webpage URL for more information about this contact.
        attr_accessor :webpage_url

        ##
        # @return [String] If available, the URL of a photograph that shows this contact.
        attr_accessor :picture_url

        ##
        # @return [Date-time] If known, the date when this record was created according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a created-date, leave this field null.
        attr_accessor :created

        ##
        # @return [Date-time] If known, the date when this record was most recently modified according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a most-recently-modified-date, leave this field null.
        attr_accessor :modified

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'erpKey' => @erp_key,
                'companyErpKey' => @company_erp_key,
                'contactName' => @contact_name,
                'contactCode' => @contact_code,
                'title' => @title,
                'roleCode' => @role_code,
                'emailAddress' => @email_address,
                'phone' => @phone,
                'fax' => @fax,
                'address1' => @address1,
                'address2' => @address2,
                'address3' => @address3,
                'city' => @city,
                'stateRegion' => @state_region,
                'postalCode' => @postal_code,
                'countryCode' => @country_code,
                'isActive' => @is_active,
                'webpageUrl' => @webpage_url,
                'pictureUrl' => @picture_url,
                'created' => @created,
                'modified' => @modified,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
