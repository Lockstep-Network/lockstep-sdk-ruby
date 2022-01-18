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


class provisioning_client

    # Initialize the provisioning_client class with a lockstepsdk instance.
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    # Creates a new User or updates an Invited user based on metadata provided by the User during the onboarding process
    # 
    # @param body [provisioning_model] Represents a User and their related metadata
    def provision_user_account()
        path = "/api/v1/Provisioning"
        @lockstepsdk.request(:post, path, body, nil)
    end

    # Updates user, company and group metadata for a User of status 'Onboarding' and finalizes a user's onboarding process by changing the user status to 'Active'
    # 
    # @param body [provisioning_finalize_request_model] Represents a User and their related metadata
    def finalize_user_account_provisioning()
        path = "/api/v1/Provisioning/finalize"
        @lockstepsdk.request(:post, path, body, nil)
    end
end
