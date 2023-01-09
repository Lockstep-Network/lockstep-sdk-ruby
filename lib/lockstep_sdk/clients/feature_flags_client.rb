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


require 'awrence'

class FeatureFlagsClient

    ##
    # Initialize the FeatureFlagsClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the specified feature flags. True if they are enabled, false otherwise.
    #
    # @param body [FeatureFlagsRequestModel] 
    def retrieve_feature_flags(body:)
        path = "/api/v1/feature-flags"
        @connection.request(:post, path, body, nil)
    end
end
