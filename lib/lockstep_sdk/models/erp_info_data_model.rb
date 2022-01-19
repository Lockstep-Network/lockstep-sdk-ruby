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

    # Represents all the possible data sent as a part of the provisioning post.
    # Only send required fields for the given connector.
    class erpInfoDataModel
        # @return [string] The authorization code returned from the first step of the OAuth2 flow https://oauth.net/2/grant-types/authorization-code/
        attr_accessor :auth_code
        # @return [string] The realm id of the account being granted permissions to access
        attr_accessor :realm_id
        # @return [string] The redirect uri used for step one of the OAuth2.0 flow.
        attr_accessor :redirect_uri
    end
end
