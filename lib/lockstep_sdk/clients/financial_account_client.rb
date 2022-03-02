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

class FinancialAccountClient

    ##
    # Initialize the FinancialAccountClient class with a lockstepsdk instance.
    # @param lockstepsdk [LockstepApi] The Lockstep API client object for this connection
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    ##
    # Creates a financial account with the specified name.
    #
    # @param body [FinancialAccountModel] Metadata about the financial account to create.
    def create_financial_account(body:)
        path = "/api/v1/FinancialAccount"
        @lockstepsdk.request(:post, path, body, nil)
    end

    ##
    # Retrieves the financial account specified by this unique identifier.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of this Account; NOT the customer's ERP key
    def retrieve_financial_account(id:)
        path = "/api/v1/FinancialAccount/#{id}"
        @lockstepsdk.request(:get, path, nil, nil)
    end

    ##
    #
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Account to update; NOT the customer's ERP key
    # @param body [object] A list of changes to apply to this Account
    def update_financial_account(id:, body:)
        path = "/api/v1/FinancialAccount/#{id}"
        @lockstepsdk.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end

    ##
    # Deletes the Financial Account referred to by this unique identifier.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Financial Account to disable; NOT the customer's ERP key
    def deletes_financial_account(id:)
        path = "/api/v1/FinancialAccount/#{id}"
        @lockstepsdk.request(:delete, path, nil, nil)
    end

    ##
    #
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve.
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_financial_accounts(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/FinancialAccount/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @lockstepsdk.request(:get, path, nil, params)
    end
end
