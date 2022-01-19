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

    # An API Key is an authentication token that you may use with the Lockstep API.  Because API Keys
    # do not have an expiration date, they are well suited for unattended processes.  Each API Key
    # is associated with a user, and may be revoked to prevent it from accessing the Lockstep API.
    # When you create an API Key, make sure to save the value in a secure location.  Lockstep cannot
    # retrieve an API Key once it is created.
    # 
    # For more information, see [API Keys](https://developer.lockstep.io/docs/api-keys).
    class apiKeyModel
        # @return [uuid] The unique identifier for the API key.
        attr_accessor :api_key_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The name of the API key.
        attr_accessor :name
        # @return [string] The API key to use for authentication. This will only be returned upon creation of the API key. All other times, this value will be `null`. For more information, see [API Keys](https://developer.lockstep.io/docs/api-keys).
        attr_accessor :api_key
        # @return [string] The first 10 characters of the API key. This information can be used to ensure that you are looking at the correct API Key, but cannot be used for authentication.
        attr_accessor :key_prefix
        # @return [date-time] The date the API key was created.
        attr_accessor :created
        # @return [uuid] The user that created the API key.
        attr_accessor :created_user_id
        # @return [date-time] The date the API key was revoked.
        attr_accessor :revoked
        # @return [uuid] The user who revoked the API key.
        attr_accessor :revoked_user_id
        # @return [date-time] The UTC datetime when the API key expires.
        attr_accessor :expires
    end
end
