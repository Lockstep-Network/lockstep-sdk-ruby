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
    class statusModel
        # @return [string] If authentication is successful, contains the username of the logged-in user.
        attr_accessor :user_name
        # @return [string] If authentication is successful, contains subscription account name of logged-in user.
        attr_accessor :account_name
        # @return [uuid] If authentication is successful, contains subscription account company id of logged-in user.
        attr_accessor :account_company_id
        # @return [uuid] If authentication is successful, contains the unique identifier of the logged-in user.
        attr_accessor :user_id
        # @return [uuid] If authentication is successful, contains the group key of the logged-in user.
        attr_accessor :group_key
        # @return [boolean] Returns true if authentication for this API was successful.
        attr_accessor :logged_in
        # @return [string] The error message.
        attr_accessor :error_message
        # @return [string] The set of roles for this user.
        attr_accessor :roles
        # @return [date-time] Date and time user has last logged into Azure B2C.
        attr_accessor :last_logged_in
        # @return [uuid] The id of the API key used to authenticate.
        attr_accessor :api_key_id
        # @return [string] If authentication is successful, contains the user status of the logged-in user.
        attr_accessor :user_status
        # @return [string] The environment currently being used
        attr_accessor :environment
        # @return [string] The version currently being used
        attr_accessor :version
        # @return [object] Statuses for the dependencies of this api. OK if the dependency is working.
        attr_accessor :dependencies
    end
end
