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

class InvoiceLinesClient

    ##
    # Initialize the InvoiceLinesClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Creates one or more invoice lines within this account and returns the created records
    #
    # @param body [InvoiceLineModel] 
    def create_invoiceline(body:)
        path = "/api/v1/invoice-lines"
        @connection.request(:post, path, body, nil)
    end

    ##
    #
    #
    # @param body [BulkDeleteRequestModel] The unique Lockstep Platform ID numbers of the Invoice Lines to delete; NOT the customer's ERP keys
    def delete_invoice_lines(body:)
        path = "/api/v1/invoice-lines"
        @connection.request(:delete, path, body, nil)
    end

    ##
    #
    #
    # @param invoice_line_id [uuid] Unique id of the the InvoiceLine
    def retrieves_invoice_line(invoice_line_id:)
        path = "/api/v1/invoice-lines/#{invoiceLineId}"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Updates an existing Invoice Line with the information supplied to this PATCH call.
    #
    # The PATCH method allows you to change specific values on the object while leaving other values alone. As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged. This allows you to ensure that you are only updating the specific fields desired.
    #
    # @param invoice_line_id [uuid] Unique id of the the InvoiceLine
    # @param body [object] A list of changes to apply to this Invoice Line
    def update_invoice_line(invoice_line_id:, body:)
        path = "/api/v1/invoice-lines/#{invoiceLineId}"
        @connection.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end

    ##
    #
    #
    # @param invoice_line_id [uuid] Unique id of the the InvoiceLine
    def deletes_invoice_line(invoice_line_id:)
        path = "/api/v1/invoice-lines/#{invoiceLineId}"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Queries Invoice Lines for the account using specified filtering More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve.
    # @param order [string] The sort order for the results, in the [Searchlight order syntax]
    # @param page_size [int32] The page size for results (default 200, maximum of 10,000)
    # @param page_number [int32] The page number for results (default 0)
    def query_invoice_lines(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/invoice-lines/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
