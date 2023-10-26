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

class StatusClient

    ##
    # Initialize the StatusClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Verifies that your application can successfully call the Lockstep Platform API and returns a successful code regardless of your authentication status or permissions.
    #
    # The Ping API can be used to verify that your app is working correctly.  The Ping API will always return 200 OK.  If you call this API and you receive a code other than 200 OK, you should check your network connectivity.  A response code of anything other than 200 means that a routing issue or proxy issue may prevent your application from reaching the Lockstep API
    #
    def ping()
        path = "/api/v1/Status"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Verifies that the specified authentication token is valid and returns a successful code if it is.
    def check_authentication()
        path = "/api/v1/Status/auth"
        @connection.request(:get, path, nil, nil)
    end
end
