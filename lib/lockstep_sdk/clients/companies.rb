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


class companies_client

    require 'awrence'

    # Initialize the companies_client class with a lockstepsdk instance.
    # @param lockstepsdk [LockstepApi] The Lockstep API client object for this connection
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    # Retrieves the Company specified by this unique identifier, optionally including nested data sets.  A Company represents a customer, a vendor, or a company within the organization of the account holder. Companies can have parents and children, representing an organizational hierarchy of corporate entities. You can use Companies to track projects and financial data under this Company label.
    # 
    # See [Vendors, Customers, and Companies](https://developer.lockstep.io/docs/companies-customers-and-vendors) for more information.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of this Company; NOT the customer's ERP key
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Attachments, Contacts, CustomFields, Invoices, Notes, Classification
    def retrieve_company(id:, include_param:)
        path = "/api/v1/Companies/#{id}"
        params = {:include => include_param}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Updates a Company that matches the specified id with the requested information.
    # 
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.  A Company represents a customer, a vendor, or a company within the organization of the account holder. Companies can have parents and children, representing an organizational hierarchy of corporate entities. You can use Companies to track projects and financial data under this Company label.
    # 
    # See [Vendors, Customers, and Companies](https://developer.lockstep.io/docs/companies-customers-and-vendors) for more information.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of this Company; NOT the customer's ERP key
    # @param body [object] A list of changes to apply to this Company
    def update_company(id:)
        path = "/api/v1/Companies/#{id}"
        params = {}
        @lockstepsdk.request(:patch, path, body, params)
    end

    # Disable the Company referred to by this unique identifier.
    # 
    # A Company represents a customer, a vendor, or a company within the organization of the account holder. Companies can have parents and children, representing an organizational hierarchy of corporate entities. You can use Companies to track projects and financial data under this Company label.
    # 
    # See [Vendors, Customers, and Companies](https://developer.lockstep.io/docs/companies-customers-and-vendors) for more information.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of this Company; NOT the customer's ERP key
    def disable_company(id:)
        path = "/api/v1/Companies/#{id}"
        params = {}
        @lockstepsdk.request(:delete, path, nil, params)
    end

    # Creates one or more Companies from a given model.  A Company represents a customer, a vendor, or a company within the organization of the account holder. Companies can have parents and children, representing an organizational hierarchy of corporate entities. You can use Companies to track projects and financial data under this Company label.
    # 
    # See [Vendors, Customers, and Companies](https://developer.lockstep.io/docs/companies-customers-and-vendors) for more information.
    # 
    # @param body [CompanyModel] The Companies to create
    def create_companies()
        path = "/api/v1/Companies"
        @lockstepsdk.request(:post, path, body, nil)
    end

    # Queries Companies for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    # 
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.  A Company represents a customer, a vendor, or a company within the organization of the account holder. Companies can have parents and children, representing an organizational hierarchy of corporate entities. You can use Companies to track projects and financial data under this Company label.
    # 
    # See [Vendors, Customers, and Companies](https://developer.lockstep.io/docs/companies-customers-and-vendors) for more information.
    # 
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Attachments, Contacts, CustomFields, Invoices, Notes, Classification
    # @param order [string] The sort order for the results, in the [Searchlight order syntax](https://github.com/tspence/csharp-searchlight).
    # @param pageSize [int32] The page size for results (default 200, maximum of 10,000)
    # @param pageNumber [int32] The page number for results (default 0)
    def query_companies(filter:, include_param:, order:, pageSize:, pageNumber:)
        path = "/api/v1/Companies/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => pageSize, :pageNumber => pageNumber}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Queries Customer Summaries for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    # 
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.  The Customer Summary View represents a slightly different view of the data and includes some extra fields that might be useful. For more information, see the data format of the Customer Summary Model.  See [Vendors, Customers, and Companies](https://developer.lockstep.io/docs/companies-customers-and-vendors) for more information.
    # 
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    # @param order [string] The sort order for the results, in the [Searchlight order syntax](https://github.com/tspence/csharp-searchlight).
    # @param pageSize [int32] The page size for results (default 200, maximum of 10,000)
    # @param pageNumber [int32] The page number for results (default 0)
    def query_customer_summary(filter:, include_param:, order:, pageSize:, pageNumber:)
        path = "/api/v1/Companies/views/customer-summary"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => pageSize, :pageNumber => pageNumber}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Retrieves the Customer Details specified by this unique identifier, optionally including nested data sets.  The Customer Detail View represents a slightly different view of the data and includes some extra fields that might be useful. For more information, see the data format of the Customer Detail Model.  See [Vendors, Customers, and Companies](https://developer.lockstep.io/docs/companies-customers-and-vendors) for more information.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of this Company; NOT the customer's ERP key
    def retrieve_customer_detail(id:)
        path = "/api/v1/Companies/views/customer-details/#{id}"
        params = {}
        @lockstepsdk.request(:get, path, nil, params)
    end
end
