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

    # A Contact contains information about a person or role within a Company.
    # You can use Contacts to track information about who is responsible for a specific project,
    # who handles invoices, or information about which role at a particular customer or
    # vendor you should speak with about invoices.
    class contactModel
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :contact_id
        # @return [uuid] The ID of the company to which this contact belongs.
        attr_accessor :company_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [string] The name of the contact.
        attr_accessor :contact_name
        # @return [string] A friendly human-readable code that describes this Contact.
        attr_accessor :contact_code
        # @return [string] The title of the contact.
        attr_accessor :title
        # @return [string] The role code for the contact.
        attr_accessor :role_code
        # @return [email] The email address of the contact.
        attr_accessor :email_address
        # @return [string] The phone number of the contact.
        attr_accessor :phone
        # @return [string] The fax number of the contact.
        attr_accessor :fax
        # @return [string] The first line of the address.
        attr_accessor :address1
        # @return [string] The second line of the address.
        attr_accessor :address2
        # @return [string] The third line of the address.
        attr_accessor :address3
        # @return [string] The city of the address.
        attr_accessor :city
        # @return [string] The state/region of the address.
        attr_accessor :state_region
        # @return [string] The postal/zip code of the address.
        attr_accessor :postal_code
        # @return [string] The two character country code of the address. This will be validated by the /api/v1/countries data set
        attr_accessor :country_code
        # @return [boolean] Flag indicating if the contact is active.
        attr_accessor :is_active
        # @return [uri] The webpage url of the contact.
        attr_accessor :webpage_url
        # @return [uri] The picture/avatar url of the contact.
        attr_accessor :picture_url
        # @return [date-time] The date on which this record was created.
        attr_accessor :created
        # @return [uuid] The ID of the user who created this contact.
        attr_accessor :created_user_id
        # @return [date-time] The date on which this record was last modified.
        attr_accessor :modified
        # @return [uuid] The ID of the user who last modified this contact.
        attr_accessor :modified_user_id
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [noteModel] All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachmentModel] All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [customFieldDefinitionModel] All definitions attached to this contact. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [customFieldValueModel] All values attached to this contact. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
    end
end
