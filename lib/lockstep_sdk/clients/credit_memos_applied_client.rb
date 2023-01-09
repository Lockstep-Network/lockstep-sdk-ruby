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

class CreditMemosAppliedClient

    ##
    # Initialize the CreditMemosAppliedClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the Credit Memo Applied specified by this unique identifier, optionally including nested data sets.
    #
    # Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds. Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice, Lockstep creates a Credit Memo Applied record to track the amount from the Credit Memo that was applied as payment to the Invoice. You can examine Credit Memo Applied records to track which Invoices were paid using this Credit.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of this Credit Memo Applied; NOT the customer's ERP key
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Attachments, CustomFields, Notes, Invoice, CreditMemoInvoice
    def retrieve_credit_memo_applied(id:, include_param:)
        path = "/api/v1/credit-memos-applied/#{id}"
        params = {:include => include_param}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Updates an existing Credit Memo Applied with the information supplied to this PATCH call.
    #
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.
    #
    # Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds. Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice, Lockstep creates a Credit Memo Applied record to track the amount from the Credit Memo that was applied as payment to the Invoice. You can examine Credit Memo Applied records to track which Invoices were paid using this Credit.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Credit Memo Applied to update; NOT the customer's ERP key
    # @param body [object] A list of changes to apply to this Credit Memo Applied
    def update_credit_memos_applied(id:, body:)
        path = "/api/v1/credit-memos-applied/#{id}"
        @connection.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end

    ##
    # Deletes the Credit Memo Applied referred to by this unique identifier.
    #
    # Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds. Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice, Lockstep creates a Credit Memo Applied record to track the amount from the Credit Memo that was applied as payment to the Invoice. You can examine Credit Memo Applied records to track which Invoices were paid using this Credit.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Credit Memo Applied to delete; NOT the customer's ERP key
    def delete_credit_memo_applied(id:)
        path = "/api/v1/credit-memos-applied/#{id}"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Creates one or more Credit Memos Applied within this account and returns the records as created.
    #
    # Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds. Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice, Lockstep creates a Credit Memo Applied record to track the amount from the Credit Memo that was applied as payment to the Invoice. You can examine Credit Memo Applied records to track which Invoices were paid using this Credit.
    #
    # @param body [CreditMemoAppliedModel] The Credit Memos Applied to create
    def create_credit_memos_applied(body:)
        path = "/api/v1/credit-memos-applied"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Queries Credit Memos Applied for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds. Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice, Lockstep creates a Credit Memo Applied record to track the amount from the Credit Memo that was applied as payment to the Invoice. You can examine Credit Memo Applied records to track which Invoices were paid using this Credit.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Attachments, CustomFields, Notes
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 250, maximum of 500). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_credit_memos_applied(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/credit-memos-applied/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
