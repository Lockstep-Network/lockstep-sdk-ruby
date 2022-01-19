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

    # Represents the response to either a successful or failed account provisioning
    class provisioningResponseModel
        # @return [string] If provisioning is successful, contains the username of the created user.
        attr_accessor :user_name
        # @return [string] If provisioning is successful, contains subscription account name of created user.
        attr_accessor :account_name
        # @return [uuid] If provisioning is successful, contains the unique identifier of the created user.
        attr_accessor :user_id
        # @return [uuid] If provisioning is successful, contains the group key of the created user.
        attr_accessor :group_key
        # @return [uuid] If provisioning is successful, contains the app enrollment id of the created app enrollment.
        attr_accessor :app_enrollment_id
        # @return [uuid] if provisioning is successful, contains the sync request id of the sync that was started for the app enrollment.
        attr_accessor :sync_request_id
        # @return [string] The error message(s).
        attr_accessor :error_message
    end
end
