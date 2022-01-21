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

    # Represents all the possible data sent as a part of the provisioning post.
    # Only send required fields for the given connector.
    class ErpInfoDataModel

        # Initialize the ErpInfoDataModel using the provided prototype
        def initialize(params = {})
            @auth_code = params.dig(:auth_code)
            @realm_id = params.dig(:realm_id)
            @redirect_uri = params.dig(:redirect_uri)
        end

        # @return [String] The authorization code returned from the first step of the OAuth2 flow https://oauth.net/2/grant-types/authorization-code/
        attr_accessor :auth_code
        # @return [String] The realm id of the account being granted permissions to access
        attr_accessor :realm_id
        # @return [String] The redirect uri used for step one of the OAuth2.0 flow.
        attr_accessor :redirect_uri

        def as_json(options={})
            {
                'authCode' => @auth_code,
                'realmId' => @realm_id,
                'redirectUri' => @redirect_uri,
            }
        end

        def to_json(*options)
            [#{as_json(*options).to_json(*options)}]
        end
    end
end
