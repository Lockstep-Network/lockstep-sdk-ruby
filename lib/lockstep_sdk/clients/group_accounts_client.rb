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

class GroupAccountsClient

    ##
    # Initialize the GroupAccountsClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves group account data for the current user.
    #
    def retrieve_group_account_data()
        path = "/api/v1/GroupAccounts/me"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Updates a group account that matches the specified id with the requested information.
    #
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.
    #
    # @param id [uuid] The unique ID number of the Group Account to retrieve
    # @param body [object] A list of changes to apply to this Group Account
    def update_group_account(id:, body:)
        path = "/api/v1/GroupAccounts/#{id}"
        @connection.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end
end
