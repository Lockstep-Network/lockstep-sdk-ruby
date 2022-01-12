#  An API Key is an authentication token that you may use with the Lockstep API.  Because API Keys
#  do not have an expiration date, they are well suited for unattended processes.  Each API Key
#  is associated with a user, and may be revoked to prevent it from accessing the Lockstep API.
#  When you create an API Key, make sure to save the value in a secure location.  Lockstep cannot
#  retrieve an API Key once it is created.
#  
#  For more information, see [API Keys](https://developer.lockstep.io/docs/api-keys).

class ApiKey

    attr_accessor :apiKeyId, :groupKey, :name, :apiKey, :keyPrefix, :created, :createdUserId, :revoked, :revokedUserId, :expires

    def initialize(params={})
        
        @apiKeyId = params.fetch(:apiKeyId) # The unique identifier for the API key.
        @groupKey = params.fetch(:groupKey) # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        @name = params.fetch(:name) # The name of the API key.
        @apiKey = params.fetch(:apiKey) # The API key to use for authentication. This will only be returned upon creation of the API key. All other times, this value will be `null`. For more information, see [API Keys](https://developer.lockstep.io/docs/api-keys).
        @keyPrefix = params.fetch(:keyPrefix) # The first 10 characters of the API key. This information can be used to ensure that you are looking at the correct API Key, but cannot be used for authentication.
        @created = params.fetch(:created) # The date the API key was created.
        @createdUserId = params.fetch(:createdUserId) # The user that created the API key.
        @revoked = params.fetch(:revoked) # The date the API key was revoked.
        @revokedUserId = params.fetch(:revokedUserId) # The user who revoked the API key.
        @expires = params.fetch(:expires) # The UTC datetime when the API key expires.
    end
end