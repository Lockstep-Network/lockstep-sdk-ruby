#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayanan <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


class PaymentApplicationsClient

    # Initialize the PaymentApplicationsClient class with a lockstepsdk instance.
    # @param lockstepsdk [LockstepApi] The Lockstep API client object for this connection
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    # Retrieves the Payment Application specified by this unique identifier, optionally including nested data sets.
    # 
    # A Payment Application is created by a business who receives a Payment from a customer.  A customer may make a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected to which Payments and for which amounts.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of this Payment Application; NOT the customer's ERP key
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Invoice
    def retrieve_payment_application(id:, include_param:)
        path = "/api/v1/PaymentApplications/#{id}"
        params = {:include => include_param}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Updates an existing Payment Application with the information supplied to this PATCH call.
    # 
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.  A Payment Application is created by a business who receives a Payment from a customer.  A customer may make a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected to which Payments and for which amounts.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of the Payment Application to update; NOT the customer's ERP key
    # @param body [object] A list of changes to apply to this Payment Application
    def update_payment_application(id:)
        path = "/api/v1/PaymentApplications/#{id}"
        params = {}
        @lockstepsdk.request(:patch, path, body, params)
    end

    # Deletes the Payment Application referred to by this unique identifier.
    # 
    # A Payment Application is created by a business who receives a Payment from a customer.  A customer may make a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected to which Payments and for which amounts.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of the Payment Application to delete; NOT the customer's ERP key
    def delete_payment_application(id:)
        path = "/api/v1/PaymentApplications/#{id}"
        params = {}
        @lockstepsdk.request(:delete, path, nil, params)
    end

    # Creates one or more Payment Applications within this account and returns the records as created.
    # 
    # A Payment Application is created by a business who receives a Payment from a customer.  A customer may make a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected to which Payments and for which amounts.
    # 
    # @param body [PaymentAppliedModel] The Payment Applications to create
    def create_payment_applications()
        path = "/api/v1/PaymentApplications"
        @lockstepsdk.request(:post, path, body, nil)
    end

    # Queries Payment Applications for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    # 
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.  A Payment Application is created by a business who receives a Payment from a customer.  A customer may make a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected to which Payments and for which amounts.
    # 
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Invoice
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param pageSize [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param pageNumber [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_payment_applications(filter:, include_param:, order:, pageSize:, pageNumber:)
        path = "/api/v1/PaymentApplications/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => pageSize, :pageNumber => pageNumber}
        @lockstepsdk.request(:get, path, nil, params)
    end
end
