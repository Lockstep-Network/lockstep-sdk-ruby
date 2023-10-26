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

class WorkflowStatusesClient

    ##
    # Initialize the WorkflowStatusesClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the Workflow Status specified by this unique identifier.
    #
    # A Workflow Status represents the state for a specific workflow for an entity. A Workflow Status may be generic for common use cases or specific to a set of predefined statuses.
    #
    # @param id [uuid] The unique ID number of the Workflow Status to retrieve
    def retrieve_workflow_status(id:)
        path = "/api/v1/workflow-statuses/#{id}"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Creates one or more Workflow Statuses from a given model.
    #
    # A Workflow Status represents the state for a specific workflow for an entity. A Workflow Status may be generic for common use cases or specific to a set of predefined statuses.
    #
    # @param body [WorkflowStatusModel] The Workflow Statuses to create
    def create_workflow_statuses(body:)
        path = "/api/v1/workflow-statuses"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Queries Workflow Statuses using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Accounting Data Services Developer website.
    #
    # A Workflow Status represents the state for a specific workflow for an entity. A Workflow Status may be generic for common use cases or specific to a set of predefined statuses.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 250, maximum of 500). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_workflow_statuses(filter:, order:, page_size:, page_number:)
        path = "/api/v1/workflow-statuses/query"
        params = {:filter => filter, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
