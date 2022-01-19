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

    # A User represents a person who has the ability to authenticate against the Lockstep Platform and use
    # services such as Lockstep Inbox.  A User is uniquely identified by an Azure identity, and each user must
    # have an email address defined within their account.  All Users must validate their email to make use of
    # Lockstep platform services.  Users may have different privileges and access control rights within the
    # Lockstep Platform.
    class userAccountModel
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. This record provides a link to the user's Azure AD B2C OID.
        attr_accessor :user_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The full name of the user
        attr_accessor :user_name
        # @return [email] The email of the user
        attr_accessor :email
        # @return [string] The status of the user's account
        attr_accessor :status
        # @return [date-time] The date that the user account was created
        attr_accessor :created
        # @return [uuid] The ID of the user who created the user account
        attr_accessor :created_user_id
        # @return [date-time] The date the user account was last modified
        attr_accessor :modified
        # @return [uuid] The ID of the user who last modified the user account
        attr_accessor :modified_user_id
        # @return [string] The name of the user who last modified the user account
        attr_accessor :modified_user_name
        # @return [uuid] The ID of the user in Azure B2C
        attr_accessor :b2_cuser_id
        # @return [uuid] The id of the Permission Level for the user.
        attr_accessor :user_role
        # @return [date-time] The date timestamp when the invite was sent to the user.
        attr_accessor :invite_sent
        # @return [string] The phone number of the user.
        attr_accessor :phone_number
        # @return [string] The fax number of the user.
        attr_accessor :fax_number
        # @return [string] The title of the user; free text field
        attr_accessor :title
        # @return [uuid] FK to the CodeDefinition table; CodeType = 'AccountingRole'
        attr_accessor :accounting_role_code_def_id
        # @return [string] Address Line 1 for this User
        attr_accessor :address1
        # @return [string] Address Line 2 for this User
        attr_accessor :address2
        # @return [string] Address Line 3 for this User
        attr_accessor :address3
        # @return [string] City for this User
        attr_accessor :city
        # @return [string] Region ("state" in the US) for this User
        attr_accessor :state_region
        # @return [string] Postal Code this User
        attr_accessor :postal_code
        # @return [string] Country for this User This will be validated by the /api/v1/countries data set
        attr_accessor :country
        # @return [string] Image URL for this User
        attr_accessor :image_url
        # @return [string] Description for this User.
        attr_accessor :description
        # @return [date-time] Last date time user logged into Azure B2C.
        attr_accessor :b2_clast_logged_in
        # @return [string] The default currency code used by this user entity. This value can be overridden for invoices in a different currency code. For a list of defined currency codes, see [Query Currencies](https://developer.lockstep.io/reference/get_api-v1-definitions-currencies) This will be validated by the /api/v1/currencies data set
        attr_accessor :default_currency_code
        # @return [noteModel] All notes attached to this User. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachmentModel] All attachments attached to this User. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [customFieldValueModel] All values attached to this User. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
        # @return [codeDefinitionModel] Accounting role definition for this User. To retrieve this collection, specify `AccountingRole` in the "Include" parameter for your query.
        attr_accessor :accounting_role_code_definition
    end
end
