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

class WebhookRulesClient

    ##
    # Initialize the WebhookRulesClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the Webhook Rule specified by this unique identifier.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of this Webhook Rule
    def retrieve_webhook_rule(id:)
        path = "/api/v1/WebhookRules/#{id}"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Updates a webhook rule that matches the specified id with the requested information.
    #
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Webhook Rule to update.
    # @param body [object] A list of changes to apply to this Webhook Rule
    def update_webhook_rule(id:, body:)
        path = "/api/v1/WebhookRules/#{id}"
        @connection.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end

    ##
    # Deletes the Webhook Rule referred to by this unique identifier.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Webhook Rule to delete.
    def delete_webhook_rule(id:)
        path = "/api/v1/WebhookRules/#{id}"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Creates one or more webhook rules from a given model.
    #
    # @param body [WebhookRuleModel] The Webhook Rules to create
    def create_webhook_rules(body:)
        path = "/api/v1/WebhookRules"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Queries Webhook Rules for this account using the specified filtering, sorting, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 250, maximum of 500). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_webhook_rules(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/WebhookRules/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
