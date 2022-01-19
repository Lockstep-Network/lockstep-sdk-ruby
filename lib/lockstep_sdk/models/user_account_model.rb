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
    class UserAccountModel

        # Initialize the UserAccountModel using the provided prototype
        def initialize(params = {})
            @user_id = params.fetch(:user_id)
            @group_key = params.fetch(:group_key)
            @user_name = params.fetch(:user_name)
            @email = params.fetch(:email)
            @status = params.fetch(:status)
            @created = params.fetch(:created)
            @created_user_id = params.fetch(:created_user_id)
            @modified = params.fetch(:modified)
            @modified_user_id = params.fetch(:modified_user_id)
            @modified_user_name = params.fetch(:modified_user_name)
            @b2_cuser_id = params.fetch(:b2_cuser_id)
            @user_role = params.fetch(:user_role)
            @invite_sent = params.fetch(:invite_sent)
            @phone_number = params.fetch(:phone_number)
            @fax_number = params.fetch(:fax_number)
            @title = params.fetch(:title)
            @accounting_role_code_def_id = params.fetch(:accounting_role_code_def_id)
            @address1 = params.fetch(:address1)
            @address2 = params.fetch(:address2)
            @address3 = params.fetch(:address3)
            @city = params.fetch(:city)
            @state_region = params.fetch(:state_region)
            @postal_code = params.fetch(:postal_code)
            @country = params.fetch(:country)
            @image_url = params.fetch(:image_url)
            @description = params.fetch(:description)
            @b2_clast_logged_in = params.fetch(:b2_clast_logged_in)
            @default_currency_code = params.fetch(:default_currency_code)
            @notes = params.fetch(:notes)
            @attachments = params.fetch(:attachments)
            @custom_field_values = params.fetch(:custom_field_values)
            @accounting_role_code_definition = params.fetch(:accounting_role_code_definition)
        end

        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. This record provides a link to the user's Azure AD B2C OID.
        attr_accessor :user_id
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [String] The full name of the user
        attr_accessor :user_name
        # @return [Email] The email of the user
        attr_accessor :email
        # @return [String] The status of the user's account
        attr_accessor :status
        # @return [Date-time] The date that the user account was created
        attr_accessor :created
        # @return [Uuid] The ID of the user who created the user account
        attr_accessor :created_user_id
        # @return [Date-time] The date the user account was last modified
        attr_accessor :modified
        # @return [Uuid] The ID of the user who last modified the user account
        attr_accessor :modified_user_id
        # @return [String] The name of the user who last modified the user account
        attr_accessor :modified_user_name
        # @return [Uuid] The ID of the user in Azure B2C
        attr_accessor :b2_cuser_id
        # @return [Uuid] The id of the Permission Level for the user.
        attr_accessor :user_role
        # @return [Date-time] The date timestamp when the invite was sent to the user.
        attr_accessor :invite_sent
        # @return [String] The phone number of the user.
        attr_accessor :phone_number
        # @return [String] The fax number of the user.
        attr_accessor :fax_number
        # @return [String] The title of the user; free text field
        attr_accessor :title
        # @return [Uuid] FK to the CodeDefinition table; CodeType = 'AccountingRole'
        attr_accessor :accounting_role_code_def_id
        # @return [String] Address Line 1 for this User
        attr_accessor :address1
        # @return [String] Address Line 2 for this User
        attr_accessor :address2
        # @return [String] Address Line 3 for this User
        attr_accessor :address3
        # @return [String] City for this User
        attr_accessor :city
        # @return [String] Region ("state" in the US) for this User
        attr_accessor :state_region
        # @return [String] Postal Code this User
        attr_accessor :postal_code
        # @return [String] Country for this User This will be validated by the /api/v1/countries data set
        attr_accessor :country
        # @return [String] Image URL for this User
        attr_accessor :image_url
        # @return [String] Description for this User.
        attr_accessor :description
        # @return [Date-time] Last date time user logged into Azure B2C.
        attr_accessor :b2_clast_logged_in
        # @return [String] The default currency code used by this user entity. This value can be overridden for invoices in a different currency code. For a list of defined currency codes, see [Query Currencies](https://developer.lockstep.io/reference/get_api-v1-definitions-currencies) This will be validated by the /api/v1/currencies data set
        attr_accessor :default_currency_code
        # @return [NoteModel] All notes attached to this User. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [AttachmentModel] All attachments attached to this User. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [CustomFieldValueModel] All values attached to this User. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
        # @return [CodeDefinitionModel] Accounting role definition for this User. To retrieve this collection, specify `AccountingRole` in the "Include" parameter for your query.
        attr_accessor :accounting_role_code_definition
    end
end
