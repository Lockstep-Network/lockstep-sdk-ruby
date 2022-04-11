#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'awrence'

class ProvisioningClient

    ##
    # Initialize the ProvisioningClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Creates a new User or updates an Invited user based on metadata provided by the User during the onboarding process
    #
    # @param body [ProvisioningModel] Represents a User and their related metadata
    def provision_user_account(body:)
        path = "/api/v1/Provisioning"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Updates user, company and group metadata for a User of status 'Onboarding' and finalizes a user's onboarding process by changing the user status to 'Active'
    #
    # @param body [ProvisioningFinalizeRequestModel] Represents a User and their related metadata
    def finalize_user_account_provisioning(body:)
        path = "/api/v1/Provisioning/finalize"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Creates a new account for a developer, sending an email with information on how to access the API.
    # @param body [DeveloperAccountSubmitModel] 
    def provision_free_developer_account(body:)
        path = "/api/v1/Provisioning/free-account"
        @connection.request(:post, path, body, nil)
    end
end
