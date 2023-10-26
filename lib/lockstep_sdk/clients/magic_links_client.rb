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

class MagicLinksClient

    ##
    # Initialize the MagicLinksClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the Magic Link specified by this unique identifier, optionally including nested data sets.
    #
    # @param id [uuid] The id of the Magic Link
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: User
    def retrieve_magic_link(id:, include_param:)
        path = "/api/v1/useraccounts/magic-links/#{id}"
        params = {:include => include_param}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Revokes the magic link with the specified id so it cannot be used to call the API.
    #
    # Revocation will be received by all servers within five minutes of revocation. API calls made using this magic link after the revocation will fail. A revoked magic link cannot be un-revoked.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of this magic link
    def revoke_magic_link(id:)
        path = "/api/v1/useraccounts/magic-links/#{id}"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Revokes the bounced magic link with the specified id so it cannot be used to call the API.
    #
    # Revocation will be received by all servers within five minutes of revocation. API calls made using this magic link after the revocation will fail. A revoked magic link cannot be un-revoked.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of this magic link
    def revoke_bounced_magic_link(id:)
        path = "/api/v1/useraccounts/magic-links/#{id}/bounced"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Queries Magic Links for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: User
    # @param order [string] The sort order for the results, in the [Searchlight order syntax](https://github.com/tspence/csharp-searchlight).
    # @param page_size [int32] The page size for results (default 250, maximum of 500)
    # @param page_number [int32] The page number for results (default 0)
    def query_magic_links(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/useraccounts/magic-links/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Gets a summary of all magic links created during the specified date range, returns no content if there are no magic links for the specified date range
    #
    # @param from [date-time] The date that the summary starts from (default one year ago from today)
    # @param to [date-time] The date that the summary ends at (default today)
    def magic_link_summary(from:, to:)
        path = "/api/v1/useraccounts/magic-links/summary"
        params = {:from => from, :to => to}
        @connection.request(:get, path, nil, params)
    end
end
