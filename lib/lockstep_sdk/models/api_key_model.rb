#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayan B S <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    # An API Key is an authentication token that you may use with the Lockstep API.  Because API Keys
    # do not have an expiration date, they are well suited for unattended processes.  Each API Key
    # is associated with a user, and may be revoked to prevent it from accessing the Lockstep API.
    # When you create an API Key, make sure to save the value in a secure location.  Lockstep cannot
    # retrieve an API Key once it is created.
    # 
    # For more information, see [API Keys](https://developer.lockstep.io/docs/api-keys).
    class ApiKeyModel

        # Initialize the ApiKeyModel using the provided prototype
        def initialize(params = {})
            @api_key_id = params.dig(:api_key_id)
            @group_key = params.dig(:group_key)
            @name = params.dig(:name)
            @api_key = params.dig(:api_key)
            @key_prefix = params.dig(:key_prefix)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @revoked = params.dig(:revoked)
            @revoked_user_id = params.dig(:revoked_user_id)
            @expires = params.dig(:expires)
        end

        # @return [Uuid] The unique identifier for the API key.
        attr_accessor :api_key_id
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [String] The name of the API key.
        attr_accessor :name
        # @return [String] The API key to use for authentication. This will only be returned upon creation of the API key. All other times, this value will be `null`. For more information, see [API Keys](https://developer.lockstep.io/docs/api-keys).
        attr_accessor :api_key
        # @return [String] The first 10 characters of the API key. This information can be used to ensure that you are looking at the correct API Key, but cannot be used for authentication.
        attr_accessor :key_prefix
        # @return [Date-time] The date the API key was created.
        attr_accessor :created
        # @return [Uuid] The user that created the API key.
        attr_accessor :created_user_id
        # @return [Date-time] The date the API key was revoked.
        attr_accessor :revoked
        # @return [Uuid] The user who revoked the API key.
        attr_accessor :revoked_user_id
        # @return [Date-time] The UTC datetime when the API key expires.
        attr_accessor :expires

        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'apiKeyId' => @api_key_id,
                'groupKey' => @group_key,
                'name' => @name,
                'apiKey' => @api_key,
                'keyPrefix' => @key_prefix,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'revoked' => @revoked,
                'revokedUserId' => @revoked_user_id,
                'expires' => @expires,
            }
        end

        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
