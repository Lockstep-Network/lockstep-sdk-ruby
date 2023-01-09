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
    # Represents all possible data required to set up an app enrollment for a connector.
    # Only send required fields for the given connector.
    class ConnectorInfoModel

        ##
        # Initialize the ConnectorInfoModel using the provided prototype
        def initialize(params = {})
            @auth_code = params.dig(:auth_code)
            @token_id = params.dig(:token_id)
            @token_secret = params.dig(:token_secret)
            @realm_id = params.dig(:realm_id)
            @subsidiary_id = params.dig(:subsidiary_id)
            @redirect_uri = params.dig(:redirect_uri)
            @email = params.dig(:email)
            @username = params.dig(:username)
            @password = params.dig(:password)
            @server_name = params.dig(:server_name)
            @server_port = params.dig(:server_port)
        end

        ##
        # @return [String] The authorization code returned from the first step of the OAuth2 flow https://oauth.net/2/grant-types/authorization-code/
        attr_accessor :auth_code

        ##
        # @return [String] The access token id for the connector enrollment.
        attr_accessor :token_id

        ##
        # @return [String] The access token secret for the connector enrollment.
        attr_accessor :token_secret

        ##
        # @return [String] The realm id of the account being granted permissions to access
        attr_accessor :realm_id

        ##
        # @return [String] The subsidiary id that corresponds to a legal entity.
        attr_accessor :subsidiary_id

        ##
        # @return [String] The redirect uri used for step one of the OAuth2.0 flow.
        attr_accessor :redirect_uri

        ##
        # @return [String] The email an email connection is being created for.
        attr_accessor :email

        ##
        # @return [String] The username of the web services account with access permissions.
        attr_accessor :username

        ##
        # @return [String] The password for the web services account with access permissions.
        attr_accessor :password

        ##
        # @return [String] The server name a connection is being created for.
        attr_accessor :server_name

        ##
        # @return [Int32] The port number of the server a connection is being created for.
        attr_accessor :server_port

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'authCode' => @auth_code,
                'tokenId' => @token_id,
                'tokenSecret' => @token_secret,
                'realmId' => @realm_id,
                'subsidiaryId' => @subsidiary_id,
                'redirectUri' => @redirect_uri,
                'email' => @email,
                'username' => @username,
                'password' => @password,
                'serverName' => @server_name,
                'serverPort' => @server_port,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
