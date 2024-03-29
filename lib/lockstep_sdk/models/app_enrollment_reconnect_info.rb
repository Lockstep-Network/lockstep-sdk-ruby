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


require 'json'

module LockstepSdk

    ##
    # Information to reconnect an ERP.
    class AppEnrollmentReconnectInfo

        ##
        # Initialize the AppEnrollmentReconnectInfo using the provided prototype
        def initialize(params = {})
            @auth_code = params.dig(:auth_code)
            @username = params.dig(:username)
            @password = params.dig(:password)
            @realm_id = params.dig(:realm_id)
            @token_id = params.dig(:token_id)
            @token_secret = params.dig(:token_secret)
            @redirect_uri = params.dig(:redirect_uri)
        end

        ##
        # @return [String] The OAuth authentication code.
        attr_accessor :auth_code

        ##
        # @return [String] The username for the web services account with access permissions.
        attr_accessor :username

        ##
        # @return [String] The password for the web services account with access permissions.
        attr_accessor :password

        ##
        # @return [String] The Realm Id for the app enrollment to reconnect.
        attr_accessor :realm_id

        ##
        # @return [String] The access token id for the connector enrollment.
        attr_accessor :token_id

        ##
        # @return [String] The access token secret for the connector enrollment.
        attr_accessor :token_secret

        ##
        # @return [String] The OAuth redirect uri.
        attr_accessor :redirect_uri

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'authCode' => @auth_code,
                'username' => @username,
                'password' => @password,
                'realmId' => @realm_id,
                'tokenId' => @token_id,
                'tokenSecret' => @token_secret,
                'redirectUri' => @redirect_uri,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
