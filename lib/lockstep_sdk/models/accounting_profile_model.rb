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
    # An Accounting Profile is a child of a Company Profile, and collectively,
    # they comprise the identity and necessary information for an accounting  team
    # to work with trading partners, financial institutions, auditors, and others.
    # You can use Accounting Profiles to define an accounting function by what
    # the function does and how to interface with the function.
    class AccountingProfileModel

        ##
        # Initialize the AccountingProfileModel using the provided prototype
        def initialize(params = {})
            @accounting_profile_id = params.dig(:accounting_profile_id)
            @company_id = params.dig(:company_id)
            @group_key = params.dig(:group_key)
            @name = params.dig(:name)
            @type = params.dig(:type)
            @email_address = params.dig(:email_address)
            @phone = params.dig(:phone)
            @address1 = params.dig(:address1)
            @address2 = params.dig(:address2)
            @address3 = params.dig(:address3)
            @city = params.dig(:city)
            @region = params.dig(:region)
            @postal_code = params.dig(:postal_code)
            @country = params.dig(:country)
            @primary_contact_id = params.dig(:primary_contact_id)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @notes = params.dig(:notes)
            @attachments = params.dig(:attachments)
            @custom_field_definitions = params.dig(:custom_field_definitions)
            @custom_field_values = params.dig(:custom_field_values)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :accounting_profile_id

        ##
        # @return [Uuid] The ID of the company profile to which this accounting profile belongs.
        attr_accessor :company_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The name of the accounting profile.
        attr_accessor :name

        ##
        # @return [String] The type of the accounting profile. Some examples include 'AR', 'AP', 'AR+AP', 'General Accounting', 'Treasury', 'Payroll', 'Finance'
        attr_accessor :type

        ##
        # @return [Email] The email address associated with the accounting profile.
        attr_accessor :email_address

        ##
        # @return [String] The phone number associated with the accounting profile.
        attr_accessor :phone

        ##
        # @return [String] The first line of the address.
        attr_accessor :address1

        ##
        # @return [String] The second line of the address.
        attr_accessor :address2

        ##
        # @return [String] The third line of the address.
        attr_accessor :address3

        ##
        # @return [String] The city of the address.
        attr_accessor :city

        ##
        # @return [String] The state/region of the address.
        attr_accessor :region

        ##
        # @return [String] The postal/zip code of the address.
        attr_accessor :postal_code

        ##
        # @return [String] The two character country code of the address.
        attr_accessor :country

        ##
        # @return [Uuid] The ID of the primary contact with which this accounting profile is associated.
        attr_accessor :primary_contact_id

        ##
        # @return [Date-time] The date on which this record was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID of the user who created this accounting profile.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date on which this record was last modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The ID of the user who last modified this accounting profile.
        attr_accessor :modified_user_id

        ##
        # @return [NoteModel] A collection of notes linked to this record. To retrieve this collection, specify `Notes` in the `include` parameter when retrieving data. To create a note, use the [Create Note](https://developer.lockstep.io/reference/post_api-v1-notes) endpoint with the `TableKey` to `AccountingProfile` and the `ObjectKey` set to the `AccountingProfileId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :notes

        ##
        # @return [AttachmentModel] A collection of attachments linked to this record. To retrieve this collection, specify `Attachments` in the `include` parameter when retrieving data. To create an attachment, use the [Upload Attachment](https://developer.lockstep.io/reference/post_api-v1-attachments) endpoint with the `TableKey` to `AccountingProfile` and the `ObjectKey` set to the `AccountingProfileId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :attachments

        ##
        # @return [CustomFieldDefinitionModel] A collection of custom fields linked to this record. To retrieve this collection, specify `CustomFieldDefinitions` in the `include` parameter when retrieving data. To create a custom field, use the [Create Custom Field](https://developer.lockstep.io/reference/post_api-v1-customfieldvalues) endpoint with the `TableKey` to `AccountingProfile` and the `ObjectKey` set to the `AccountingProfileId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :custom_field_definitions

        ##
        # @return [CustomFieldValueModel] A collection of custom fields linked to this record. To retrieve this collection, specify `CustomFieldValues` in the `include` parameter when retrieving data. To create a custom field, use the [Create Custom Field](https://developer.lockstep.io/reference/post_api-v1-customfieldvalues) endpoint with the `TableKey` to `AccountingProfile` and the `ObjectKey` set to the `AccountingProfileId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :custom_field_values

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'accountingProfileId' => @accounting_profile_id,
                'companyId' => @company_id,
                'groupKey' => @group_key,
                'name' => @name,
                'type' => @type,
                'emailAddress' => @email_address,
                'phone' => @phone,
                'address1' => @address1,
                'address2' => @address2,
                'address3' => @address3,
                'city' => @city,
                'region' => @region,
                'postalCode' => @postal_code,
                'country' => @country,
                'primaryContactId' => @primary_contact_id,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'notes' => @notes,
                'attachments' => @attachments,
                'customFieldDefinitions' => @custom_field_definitions,
                'customFieldValues' => @custom_field_values,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
