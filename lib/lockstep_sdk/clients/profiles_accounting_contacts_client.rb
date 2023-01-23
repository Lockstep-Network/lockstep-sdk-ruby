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
    # A Contact has a link to a Contact that is associated with your company's Accounting Profile. These Contacts are secondary contacts to the primary that is on the profile.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of this Accounting Profile Contact
    def retrieve_accounting_profile_contact(id:)
        path = "/api/v1/profiles/accounting/contacts/#{id}"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Delete the Accounting Profile Contact referred to by this unique identifier.
    #
    # An Accounting Profile Contact has a link to a Contact that is associated with your company's Accounting Profile. These Contacts are secondary contacts to the primary that is on the profile.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Accounting Profile Contact to delete
    def delete_accounting_profile_contact(id:)
        path = "/api/v1/profiles/accounting/contacts/#{id}"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Creates one or more Accounting Profile Contacts from a given model.
    #
    # An Accounting Profile Contact has a link to a Contact that is associated with your company's Accounting Profile. These Contacts are secondary contacts to the primary that is on the profile.
    #
    # @param body [AccountingProfileContactModel] The Accounting Profile Contacts to create
    def create_accounting_profile_contacts(body:)
        path = "/api/v1/profiles/accounting/contacts"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Updates an accounting profile contact that matches the specified id with the requested information.
    #
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.
    #
    # An Accounting Profile Contact has a link to a Contact that is associated with your company's Accounting Profile. These Contacts are secondary contacts to the primary that is on the profile.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Accounting Profile Contact to update
    # @param contact_id [uuid] The ID of the contact to link to this Accounting Profile Contact
    def update_accounting_profile_contact(id:, contact_id:)
        path = "/api/v1/profiles/accounting/contacts/#{id}/#{contactId}"
        @connection.request(:patch, path, nil, nil)
    end

    ##
    # Queries Accounting Profile Contacts for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # An Accounting Profile Contact has a link to a Contact that is associated with your company's Accounting Profile. These Contacts are secondary contacts to the primary that is on the profile.
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
    # Updates an accounting profile contact that matches the specified id with the primary contact attached to the accounting profile
    #
    # An Accounting Profile Contact has a link to a Contact that is associated with your company's Accounting Profile. These Contacts are secondary contacts to the primary that is on the profile.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Accounting Profile Contact to update
    def swap_secondary_and_primary_contact(id:)
        path = "/api/v1/profiles/accounting/contacts/#{id}/primary"
        @connection.request(:patch, path, nil, nil)
    end
end
