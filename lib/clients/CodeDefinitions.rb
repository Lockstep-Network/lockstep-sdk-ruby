#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @copyright  2021-2021 Lockstep, Inc.
# @version    2021.39
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk
    class Client
        module CodeDefinitions

            #  Retrieves the CodeDefinition specified by this unique identifier, optionally including nested data sets.
            #  
            #  A CodeDefinition contains information around system code values and their definitions.
            #  
            #  @param id [uuid] The unique Lockstep Platform ID number of this CodeDefinition
            #  @param include [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
            def retrieve_codedefinition(include)
                path = "/api/v1/CodeDefinitions/#{id}"
                send_request(:get, path, nil, {include})
            end

            #  Queries CodeDefinitions for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.  More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
            #  
            #  A CodeDefinition contains information around system code values and their definitions.
            #  
            #  @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            #  @param include [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
            #  @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            #  @param pageSize [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            #  @param pageNumber [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            def query_codedefinitions(filter, include, order, pageSize, pageNumber)
                path = "/api/v1/CodeDefinitions/query"
                send_request(:get, path, nil, {filter, include, order, pageSize, pageNumber})
            end
        end
    end
end
