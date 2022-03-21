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
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'awrence'

class FinancialAccountBalanceHistoryClient

    ##
    # Initialize the FinancialAccountBalanceHistoryClient class with a lockstepsdk instance.
    # @param lockstepsdk [LockstepApi] The Lockstep API client object for this connection
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    ##
    # Retrieves the Financial Account Balance History specified by this unique identifier.
    #
    # A Financial Account Balance History records either the current or end of period balance for a corresponding financial account.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of this Financial Account Balance History
    def retrieve_balance_history(id:)
        path = "/api/v1/FinancialAccountBalanceHistory/#{id}"
        @lockstepsdk.request(:get, path, nil, nil)
    end

    ##
    # Updates a Financial Account Balance History that matches the specified id with the requested information.
    #
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.
    #
    # A Financial Account Balance History records either the current or end of period balance for a corresponding financial account.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Financial Account Balance History to update
    # @param body [object] A list of changes to apply to this Financial Account Balance History
    def update_balance_history(id:, body:)
        path = "/api/v1/FinancialAccountBalanceHistory/#{id}"
        @lockstepsdk.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end

    ##
    # Delete the Financial Account Balance History referred to by this unique identifier.
    #
    # A Financial Account Balance History records either the current or end of period balance for a corresponding financial account.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Financial Account Balance History to disable
    def delete_balance_history(id:)
        path = "/api/v1/FinancialAccountBalanceHistory/#{id}"
        @lockstepsdk.request(:delete, path, nil, nil)
    end

    ##
    # Creates a Financial Account Balance History from a given model.
    #
    # A Financial Account Balance History records either the current or end of period balance for a corresponding financial account.
    #
    # @param body [FinancialAccountBalanceHistoryModel] The Financial Account Balance Histories to create
    def create_balance_history(body:)
        path = "/api/v1/FinancialAccountBalanceHistory"
        @lockstepsdk.request(:post, path, body, nil)
    end

    ##
    # Queries Financial Account Balance History for this account using the specified filtering, sorting, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # A Financial Account Balance History records either the current or end of period balance for a corresponding financial account.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_balance_history(filter:, order:, page_size:, page_number:)
        path = "/api/v1/FinancialAccountBalanceHistory/query"
        params = {:filter => filter, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @lockstepsdk.request(:get, path, nil, params)
    end
end
