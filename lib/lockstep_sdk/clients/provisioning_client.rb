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
# @version    2022.4
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'awrence'

class ProvisioningClient

    ##
    # Initialize the ProvisioningClient class with a lockstepsdk instance.
    # @param lockstepsdk [LockstepApi] The Lockstep API client object for this connection
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    ##
    # Creates a new User or updates an Invited user based on metadata provided by the User during the onboarding process
    #
    # @param body [ProvisioningModel] Represents a User and their related metadata
    def provision_user_account(body:)
        path = "/api/v1/Provisioning"
        @lockstepsdk.request(:post, path, body, nil)
    end

    ##
    # Updates user, company and group metadata for a User of status 'Onboarding' and finalizes a user's onboarding process by changing the user status to 'Active'
    #
    # @param body [ProvisioningFinalizeRequestModel] Represents a User and their related metadata
    def finalize_user_account_provisioning(body:)
        path = "/api/v1/Provisioning/finalize"
        @lockstepsdk.request(:post, path, body, nil)
    end

    ##
    #
    #
    # @param body [DeveloperAccountSubmitModel] 
    def provision_free_developer_account(body:)
        path = "/api/v1/Provisioning/free-account"
        @lockstepsdk.request(:post, path, body, nil)
    end
end
