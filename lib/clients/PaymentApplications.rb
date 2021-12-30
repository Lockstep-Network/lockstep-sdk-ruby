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
        module PaymentApplications

            #  Retrieves the Payment Application specified by this unique identifier, optionally including nested data sets.
            #  
            #  A Payment Application is created by a business who receives a Payment from a customer.  A customer may make a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected to which Payments and for which amounts.
            #  
            #  @param id [uuid] The unique Lockstep Platform ID number of this Payment Application; NOT the customer's ERP key
            #  @param include [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Invoice
            def retrieve_payment_application(include)
                path = "/api/v1/PaymentApplications/#{id}"
                send_request(:get, path, nil, {include})
            end

            #  Updates an existing Payment Application with the information supplied to this PATCH call.
            #  
            #  The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.  A Payment Application is created by a business who receives a Payment from a customer.  A customer may make a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected to which Payments and for which amounts.
            #  
            #  @param id [uuid] The unique Lockstep Platform ID number of the Payment Application to update; NOT the customer's ERP key
            #  @param body [object] A list of changes to apply to this Payment Application
            def update_payment_application()
                path = "/api/v1/PaymentApplications/#{id}"
                send_request(:patch, path, body, nil)
            end

            #  Deletes the Payment Application referred to by this unique identifier.
            #  
            #  A Payment Application is created by a business who receives a Payment from a customer.  A customer may make a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected to which Payments and for which amounts.
            #  
            #  @param id [uuid] The unique Lockstep Platform ID number of the Payment Application to delete; NOT the customer's ERP key
            def delete_payment_application()
                path = "/api/v1/PaymentApplications/#{id}"
                send_request(:delete, path, nil, nil)
            end

            #  Creates one or more Payment Applications within this account and returns the records as created.
            #  
            #  A Payment Application is created by a business who receives a Payment from a customer.  A customer may make a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected to which Payments and for which amounts.
            #  
            #  @param body [PaymentAppliedModel] The Payment Applications to create
            def create_payment_applications()
                path = "/api/v1/PaymentApplications"
                send_request(:post, path, body, nil)
            end

            #  Queries Payment Applications for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
            #  
            #  More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.  A Payment Application is created by a business who receives a Payment from a customer.  A customer may make a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected to which Payments and for which amounts.
            #  
            #  @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            #  @param include [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Invoice
            #  @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            #  @param pageSize [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            #  @param pageNumber [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            def query_payment_applications(filter, include, order, pageSize, pageNumber)
                path = "/api/v1/PaymentApplications/query"
                send_request(:get, path, nil, {filter, include, order, pageSize, pageNumber})
            end
        end
    end
end
