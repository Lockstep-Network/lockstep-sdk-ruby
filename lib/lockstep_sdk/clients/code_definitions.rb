#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayan B S <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'awrence'

class CodeDefinitionsClient

    # Initialize the CodeDefinitionsClient class with a lockstepsdk instance.
    # @param lockstepsdk [LockstepApi] The Lockstep API client object for this connection
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    # Retrieves the CodeDefinition specified by this unique identifier, optionally including nested data sets.
    # 
    # A CodeDefinition contains information around system code values and their definitions.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of this CodeDefinition
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    def retrieve_codedefinition(id:, include_param:)
        path = "/api/v1/CodeDefinitions/#{id}"
        params = {:include => include_param}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Queries CodeDefinitions for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    # 
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    # 
    # A CodeDefinition contains information around system code values and their definitions.
    # 
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_codedefinitions(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/CodeDefinitions/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @lockstepsdk.request(:get, path, nil, params)
    end
end
