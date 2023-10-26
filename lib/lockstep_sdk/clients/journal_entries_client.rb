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

class JournalEntriesClient

    ##
    # Initialize the JournalEntriesClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the Journal Entry specified by this unique identifier, optionally including nested data sets.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of this journal entry; NOT the customer's ERP key
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Lines, Attachments
    def retrieve_journal_entry(id:, include_param:)
        path = "/api/v1/journal-entries/#{id}"
        params = {:include => include_param}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Creates one or more Journal Entries within this account and returns the records as created.
    #
    # @param body [JournalEntryModel] The Journal Entries to create
    def create_journal_entries(body:)
        path = "/api/v1/journal-entries"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Queries Journal Entries for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Lines, Attachments
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 250, maximum of 500). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_journal_entries(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/journal-entries/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
