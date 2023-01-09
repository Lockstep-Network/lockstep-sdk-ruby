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
    # Represents the status of a user's credentials
    class StatusModel

        ##
        # Initialize the StatusModel using the provided prototype
        def initialize(params = {})
            @user_name = params.dig(:user_name)
            @email_address = params.dig(:email_address)
            @account_name = params.dig(:account_name)
            @account_company_id = params.dig(:account_company_id)
            @user_id = params.dig(:user_id)
            @group_key = params.dig(:group_key)
            @logged_in = params.dig(:logged_in)
            @error_message = params.dig(:error_message)
            @roles = params.dig(:roles)
            @last_logged_in = params.dig(:last_logged_in)
            @api_key_id = params.dig(:api_key_id)
            @user_status = params.dig(:user_status)
            @environment = params.dig(:environment)
            @version = params.dig(:version)
            @onboarding_scheduled = params.dig(:onboarding_scheduled)
            @magic_link_id = params.dig(:magic_link_id)
            @magic_link_company_id = params.dig(:magic_link_company_id)
            @magic_link = params.dig(:magic_link)
            @dependencies = params.dig(:dependencies)
            @user_groups = params.dig(:user_groups)
            @base_currency_code = params.dig(:base_currency_code)
        end

        ##
        # @return [String] If authentication is successful, contains the username of the logged-in user.
        attr_accessor :user_name

        ##
        # @return [String] If authentication is successful, contains the email address of the logged-in user.
        attr_accessor :email_address

        ##
        # @return [String] If authentication is successful, contains subscription account name of logged-in user.
        attr_accessor :account_name

        ##
        # @return [Uuid] If authentication is successful, contains subscription account company id of logged-in user.
        attr_accessor :account_company_id

        ##
        # @return [Uuid] If authentication is successful, contains the unique identifier of the logged-in user.
        attr_accessor :user_id

        ##
        # @return [Uuid] If authentication is successful, contains the group key of the logged-in user.
        attr_accessor :group_key

        ##
        # @return [Boolean] Returns true if authentication for this API was successful.
        attr_accessor :logged_in

        ##
        # @return [String] The error message.
        attr_accessor :error_message

        ##
        # @return [String] The set of roles for this user.
        attr_accessor :roles

        ##
        # @return [Date-time] Date and time user has last logged into Azure B2C.
        attr_accessor :last_logged_in

        ##
        # @return [Uuid] The id of the API key used to authenticate.
        attr_accessor :api_key_id

        ##
        # @return [String] If authentication is successful, contains the user status of the logged-in user.
        attr_accessor :user_status

        ##
        # @return [String] The environment currently being used
        attr_accessor :environment

        ##
        # @return [String] The version currently being used
        attr_accessor :version

        ##
        # @return [Boolean] If authentication is successful, contains the onboarding session status of the logged-in user's group account.
        attr_accessor :onboarding_scheduled

        ##
        # @return [Uuid] The id of the Magic link used to authenticate.
        attr_accessor :magic_link_id

        ##
        # @return [Uuid] The id of the target company for the Magic Link
        attr_accessor :magic_link_company_id

        ##
        # @return [MagicLinkStatusModel] Magic link information about the user
        attr_accessor :magic_link

        ##
        # @return [Object] Statuses for the dependencies of this api. OK if the dependency is working.
        attr_accessor :dependencies

        ##
        # @return [UserGroupModel] The set of Groups that the user has access to. You can use the /api/v1/useraccounts/change-group endpoint to change your active group.
        attr_accessor :user_groups

        ##
        # @return [String] Base Currency of the group
        attr_accessor :base_currency_code

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'userName' => @user_name,
                'emailAddress' => @email_address,
                'accountName' => @account_name,
                'accountCompanyId' => @account_company_id,
                'userId' => @user_id,
                'groupKey' => @group_key,
                'loggedIn' => @logged_in,
                'errorMessage' => @error_message,
                'roles' => @roles,
                'lastLoggedIn' => @last_logged_in,
                'apiKeyId' => @api_key_id,
                'userStatus' => @user_status,
                'environment' => @environment,
                'version' => @version,
                'onboardingScheduled' => @onboarding_scheduled,
                'magicLinkId' => @magic_link_id,
                'magicLinkCompanyId' => @magic_link_company_id,
                'magicLink' => @magic_link,
                'dependencies' => @dependencies,
                'userGroups' => @user_groups,
                'baseCurrencyCode' => @base_currency_code,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
