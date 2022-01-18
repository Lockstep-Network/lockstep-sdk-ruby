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


class leads_client

    # Initialize the leads_client class with a lockstepsdk instance.
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    # Creates one or more Leads within the Lockstep platform and returns the records as created.
    # 
    # A Lead is a person who is interested in the Lockstep platform but needs certain new features in order to use it. If you are interested in the Lockstep platform, you can create a lead with your information and our team will prioritize the feature you need.
    # @param body [lead_model] The Leads to create
    def create_leads()
        path = "/api/v1/Leads"
        @lockstepsdk.request(:post, path, body, nil)
    end
end
