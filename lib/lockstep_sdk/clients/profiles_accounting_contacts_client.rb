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

class ProfilesAccountingContactsClient

    ##
    # Initialize the ProfilesAccountingContactsClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the Accounting Profile Contact specified by this unique identifier, optionally including nested data sets.
    #
    # A Contact has a link to a Contact that is associated with your company's Accounting Profile. A profile has one primary contact and any number of secondary contacts.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of this Accounting Profile Contact
    def retrieve_accounting_profile_contact(id:)
        path = "/api/v1/profiles/accounting/contacts/#{id}"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Delete the Accounting Profile Contact referred to by this unique identifier.
    #
    # An Accounting Profile Contact has a link to a Contact that is associated with your company's Accounting Profile. A profile has one primary contact and any number of secondary contacts.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Accounting Profile Contact to delete
    def delete_accounting_profile_contact(id:)
        path = "/api/v1/profiles/accounting/contacts/#{id}"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Creates one or more Accounting Profile Contacts from a given model.
    #
    # An Accounting Profile Contact has a link to a Contact that is associated with your company's Accounting Profile. A profile has one primary contact and any number of secondary contacts.
    #
    # @param body [AccountingProfileContactModel] The Accounting Profile Contacts to create
    def create_accounting_profile_contacts(body:)
        path = "/api/v1/profiles/accounting/contacts"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Queries Accounting Profile Contacts for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # An Accounting Profile Contact has a link to a Contact that is associated with your company's Accounting Profile. A profile has one primary contact and any number of secondary contacts.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: None
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 250, maximum of 500). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_accounting_profile_contacts(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/profiles/accounting/contacts/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Queries Accounting Profile Contacts and Contacts for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # An Accounting Profile Contact has a link to a Contact that is associated with your company's Accounting Profile. A profile has one primary contact and any number of secondary contacts.
    #
    # A Contact contains information about a person or role within a Company. You can use Contacts to track information about who is responsible for a specific project, who handles invoices, or information about which role at a particular customer or vendor you should speak with about invoices.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: None
    # @param page_size [int32] The page size for results (default 250, maximum of 500). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_linked_accounting_profile_contacts(filter:, order:, include_param:, page_size:, page_number:)
        path = "/api/v1/profiles/accounting/contacts/query/models"
        params = {:filter => filter, :order => order, :include => include_param, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Reverses the isPrimary fields on the primary and secondary contact to reflect a swap and returns the new primary accounting profile contact model.
    #
    # An Accounting Profile Contact has a link to a Contact that is associated with your company's Accounting Profile. A profile has one primary contact and any number of secondary contacts.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Accounting Profile Contact to set as primary
    def set_secondary_contact_as_primary(id:)
        path = "/api/v1/profiles/accounting/contacts/#{id}/primary"
        @connection.request(:patch, path, nil, nil)
    end
end
