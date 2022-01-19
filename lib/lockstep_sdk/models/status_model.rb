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

    # Represents the status of a user's credentials
    class StatusModel

        # Initialize the StatusModel using the provided prototype
        def initialize(params = {})
            @user_name = params.fetch(:user_name)
            @account_name = params.fetch(:account_name)
            @account_company_id = params.fetch(:account_company_id)
            @user_id = params.fetch(:user_id)
            @group_key = params.fetch(:group_key)
            @logged_in = params.fetch(:logged_in)
            @error_message = params.fetch(:error_message)
            @roles = params.fetch(:roles)
            @last_logged_in = params.fetch(:last_logged_in)
            @api_key_id = params.fetch(:api_key_id)
            @user_status = params.fetch(:user_status)
            @environment = params.fetch(:environment)
            @version = params.fetch(:version)
            @dependencies = params.fetch(:dependencies)
        end

        # @return [String] If authentication is successful, contains the username of the logged-in user.
        attr_accessor :user_name
        # @return [String] If authentication is successful, contains subscription account name of logged-in user.
        attr_accessor :account_name
        # @return [Uuid] If authentication is successful, contains subscription account company id of logged-in user.
        attr_accessor :account_company_id
        # @return [Uuid] If authentication is successful, contains the unique identifier of the logged-in user.
        attr_accessor :user_id
        # @return [Uuid] If authentication is successful, contains the group key of the logged-in user.
        attr_accessor :group_key
        # @return [Boolean] Returns true if authentication for this API was successful.
        attr_accessor :logged_in
        # @return [String] The error message.
        attr_accessor :error_message
        # @return [String] The set of roles for this user.
        attr_accessor :roles
        # @return [Date-time] Date and time user has last logged into Azure B2C.
        attr_accessor :last_logged_in
        # @return [Uuid] The id of the API key used to authenticate.
        attr_accessor :api_key_id
        # @return [String] If authentication is successful, contains the user status of the logged-in user.
        attr_accessor :user_status
        # @return [String] The environment currently being used
        attr_accessor :environment
        # @return [String] The version currently being used
        attr_accessor :version
        # @return [Object] Statuses for the dependencies of this api. OK if the dependency is working.
        attr_accessor :dependencies
    end
end
