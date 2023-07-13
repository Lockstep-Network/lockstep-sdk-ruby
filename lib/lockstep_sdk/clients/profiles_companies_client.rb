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

class ProfilesCompaniesClient

    ##
    # Initialize the ProfilesCompaniesClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the Public Company Profile specified by the public url slug.
    #
    # A Public Company Profile makes available the following information: <ul><li>Company Name</li><li>Company Logo Url</li><li>Description</li><li>Website</li></ul>
    # @param url_slug [string] 
    def retrieve_public_company_profile(url_slug:)
        path = "/api/v1/profiles/companies/#{urlSlug}"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Queries Public Company Profiles
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # A Public Company Profile makes available the following information:
    #
    # <ul><li>Company Name</li><li>Company Logo Url</li><li>Description</li><li>Website</li></ul>
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param order [string] The sort order for the results, in the [Searchlight order syntax](https://github.com/tspence/csharp-searchlight).
    # @param page_size [int32] The page size for results (default 250, maximum of 500)
    # @param page_number [int32] The page number for results (default 0)
    def query_public_company_profiles(filter:, order:, page_size:, page_number:)
        path = "/api/v1/profiles/companies/query"
        params = {:filter => filter, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
