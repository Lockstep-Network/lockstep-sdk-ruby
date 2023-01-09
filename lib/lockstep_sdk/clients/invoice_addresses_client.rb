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

class InvoiceAddressesClient

    ##
    # Initialize the InvoiceAddressesClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the invoice address specified by this unique identifier, optionally including nested data sets.
    #
    # An Invoice Address contains address information about an invoice. You can use Invoice Addresses to track information about locations important to an invoice such as: where a company's goods are shipped from, where a company's goods are shipped to or billing addresses to name a few.
    #
    # @param id [uuid] The unique ID number of this invoice address
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve.
    def retrieve_invoice_address(id:, include_param:)
        path = "/api/v1/invoice-addresses/#{id}"
        params = {:include => include_param}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Deletes the Invoice Address by this unique identifier.
    #
    # An Invoice Address contains address information about an invoice. You can use Invoice Addresses to track information about locations important to an invoice such as: where a company's goods are shipped from, where a company's goods are shipped to or billing addresses to name a few.
    #
    # @param id [uuid] The unique ID of the Invoice Address to delete
    def delete_invoice_address(id:)
        path = "/api/v1/invoice-addresses/#{id}"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Updates an existing Invoice Address with the information supplied to this PATCH call.
    #
    # The PATCH method allows you to change specific values on the object while leaving other values alone. As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged. This allows you to ensure that you are only updating the specific fields desired.
    #
    # An Invoice Address contains address information about an invoice. You can use Invoice Addresses to track information about locations important to an invoice such as: where a company's goods are shipped from, where a company's goods are shipped to or billing addresses to name a few.
    #
    # @param id [uuid] The unique ID number of the Invoice Address to update
    # @param body [object] A list of changes to apply to this Invoice Address
    def update_invoice_address(id:, body:)
        path = "/api/v1/invoice-addresses/#{id}"
        @connection.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end

    ##
    # Creates one or more Invoice Addresses within this account and returns the records as created.
    #
    # An Invoice Address contains address information about an invoice. You can use Invoice Addresses to track information about locations important to an invoice such as: where a company's goods are shipped from, where a company's goods are shipped to or billing addresses to name a few.
    #
    # @param body [InvoiceAddressModel] The Invoice Address to create
    def create_invoice_address(body:)
        path = "/api/v1/invoice-addresses"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Queries Invoice Addresses for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_invoice_addresses(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/invoice-addresses/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
