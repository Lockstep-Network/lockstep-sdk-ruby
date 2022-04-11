#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'awrence'

class WebhooksClient

    ##
    # Initialize the WebhooksClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the Webhook specified by this unique identifier.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of this Webhook
    def retrieve_webhook(id:)
        path = "/api/v1/Webhooks/#{id}"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Updates a webhook that matches the specified id with the requested information.
    #
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Webhook to update.
    # @param body [object] A list of changes to apply to this Webhook
    def update_webhook(id:, body:)
        path = "/api/v1/Webhooks/#{id}"
        @connection.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end

    ##
    # Deletes the Webhook referred to by this unique identifier.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Webhook to delete.
    def delete_webhook(id:)
        path = "/api/v1/Webhooks/#{id}"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Creates one or more webhooks from a given model.
    #
    # @param body [WebhookModel] The Webhooks to create
    def create_webhooks(body:)
        path = "/api/v1/Webhooks"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Updates a webhook that matches the specified id with a new client secret.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Webhook to update.
    def regenerate_client_secret(id:)
        path = "/api/v1/Webhooks/#{id}/regenerateclientsecret"
        @connection.request(:patch, path, nil, nil)
    end

    ##
    # Queries Webhooks for this account using the specified filtering, sorting, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_webhooks(filter:, order:, page_size:, page_number:)
        path = "/api/v1/Webhooks/query"
        params = {:filter => filter, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end

    ##
    #
    #
    # @param webhook_id [uuid] The unique Lockstep Platform ID number of this Webhook
    # @param filter [string] The filter for this query. See [Azure Query Language](https://docs.microsoft.com/en-us/rest/api/storageservices/querying-tables-and-entities)
    # @param select [string] The selection for this query. Selection is the desired properties of an entity to pull from the set. If a property is not selected, it will either return as null or empty. See [Azure Query Language](https://docs.microsoft.com/en-us/rest/api/storageservices/querying-tables-and-entities)
    # @param page_size [int32] The page size for results (default 200).
    # @param page_number [int32] The page number for results (default 0).
    def query_webhook_history(webhook_id:, filter:, select:, page_size:, page_number:)
        path = "/api/v1/Webhooks/#{webhookId}/history/query"
        params = {:filter => filter, :select => select, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
