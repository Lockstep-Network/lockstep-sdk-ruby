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
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


class credit_memo_applied_client

    require 'awrence'

    # Initialize the credit_memo_applied_client class with a lockstepsdk instance.
    # @param lockstepsdk [LockstepApi] The Lockstep API client object for this connection
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    # Retrieves the Credit Memo Application specified by this unique identifier, optionally including nested data sets.
    # 
    # Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds. Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice, Lockstep creates a Credit Memo Application record to track the amount from the Credit Memo that was applied as payment to the Invoice. You can examine Credit Memo Application records to track which Invoices were paid using this Credit.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of this Credit Memo Application; NOT the customer's ERP key
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Attachments, CustomFields, Notes
    def retrieve_credit_memo_application(id:, include_param:)
        path = "/api/v1/CreditMemoApplied/#{id}"
        params = {:include => include_param}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Updates an existing Credit memo Application with the information supplied to this PATCH call.
    # 
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.  Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds. Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice, Lockstep creates a Credit Memo Application record to track the amount from the Credit Memo that was applied as payment to the Invoice. You can examine Credit Memo Application records to track which Invoices were paid using this Credit.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of the Credit Memo Application to update; NOT the customer's ERP key
    # @param body [object] A list of changes to apply to this Credit Memo Application
    def update_credit_memo_application(id:)
        path = "/api/v1/CreditMemoApplied/#{id}"
        params = {}
        @lockstepsdk.request(:patch, path, body, params)
    end

    # Deletes the Credit Memo Application referred to by this unique identifier.
    # 
    # Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds. Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice, Lockstep creates a Credit Memo Application record to track the amount from the Credit Memo that was applied as payment to the Invoice. You can examine Credit Memo Application records to track which Invoices were paid using this Credit.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of the Credit Memo Application to delete; NOT the customer's ERP key
    def delete_credit_memo_application(id:)
        path = "/api/v1/CreditMemoApplied/#{id}"
        params = {}
        @lockstepsdk.request(:delete, path, nil, params)
    end

    # Creates one or more Credit Memo Applications within this account and returns the records as created.
    # 
    # Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds. Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice, Lockstep creates a Credit Memo Application record to track the amount from the Credit Memo that was applied as payment to the Invoice. You can examine Credit Memo Application records to track which Invoices were paid using this Credit.
    # 
    # @param body [CreditMemoAppliedModel] The Credit Memo Applications to create
    def create_credit_memo_applications()
        path = "/api/v1/CreditMemoApplied"
        @lockstepsdk.request(:post, path, body, nil)
    end

    # Queries Credit Memo Applications for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    # 
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.  Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds. Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice, Lockstep creates a Credit Memo Application record to track the amount from the Credit Memo that was applied as payment to the Invoice. You can examine Credit Memo Application records to track which Invoices were paid using this Credit.
    # 
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Attachments, CustomFields, Notes
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param pageSize [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param pageNumber [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_credit_memo_applications(filter:, include_param:, order:, pageSize:, pageNumber:)
        path = "/api/v1/CreditMemoApplied/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => pageSize, :pageNumber => pageNumber}
        @lockstepsdk.request(:get, path, nil, params)
    end
end
