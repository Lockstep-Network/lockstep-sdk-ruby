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

class TransactionsClient

    ##
    # Initialize the TransactionsClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Queries transactions (invoices/credit memos/payments) for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    # @param order [string] The sort order for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 250, maximum of 500). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param current_date [date-time] The date the days past due value will be calculated against. If no currentDate is provided the current UTC date will be used.
    def query_transactions(filter:, include_param:, order:, page_size:, page_number:, current_date:)
        path = "/api/v1/Transactions/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number, :currentDate => current_date}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Retrieves a list of transaction details for the supplied transaction id.
    #
    # A Transaction Detail contains information about the associated Transaction. This information can be an invoice associated to a payment or credit memo or a payment or credit memo used as payment for one or more invoices.
    #
    # @param id [uuid] 
    def retrieve_transaction_details(id:)
        path = "/api/v1/Transactions/#{id}/details"
        @connection.request(:get, path, nil, nil)
    end
end
