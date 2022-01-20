#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2021.39
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


class UserRoles

    def initialize(lockstepsdk) # Initialize the Activities class with a lockstepsdk instance.
        @lockstepsdk = lockstepsdk
    end

    #  Retrieves the User Role with this identifier.
    #  
    #  @param id [uuid] The unique ID number of the User Role to retrieve
    #  @param include [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    def retrieve_user_role(include_param)
        path = "/api/v1/UserRoles/#{id}"
        params = {:include => include_param}
        @lockstepsdk.request(:get, path, nil, params)
    end

    #  Queries User Roles for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #  
    #  @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    #  @param include [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    #  @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    #  @param pageSize [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    #  @param pageNumber [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_user_roles(filter, include, order, pageSize, pageNumber)
        path = "/api/v1/UserRoles/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => pageSize, :pageNumber => pageNumber}
        @lockstepsdk.request(:get, path, nil, params)
    end
end
