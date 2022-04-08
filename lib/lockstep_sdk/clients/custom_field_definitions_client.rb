#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'awrence'

class CustomFieldDefinitionsClient

    ##
    # Initialize the CustomFieldDefinitionsClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the Custom Field Definition specified by this unique identifier.
    #
    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a core definition for each object.  The core definition is intended to represent a level of compatibility that provides support across most accounting systems and products.  When a user or developer requires information beyond this core definition, you can use Custom Fields to represent this information.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of this Custom Field Definition
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No additional data collections are currently defined on this object, but may be supported in the future.
    def retrieve_field_definition(id:, include_param:)
        path = "/api/v1/CustomFieldDefinitions/#{id}"
        params = {:include => include_param}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Updates an existing Custom Field Definition with the information supplied to this PATCH call.
    #
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.
    #
    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a core definition for each object.  The core definition is intended to represent a level of compatibility that provides support across most accounting systems and products.  When a user or developer requires information beyond this core definition, you can use Custom Fields to represent this information.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Custom Field Definition to update
    # @param body [object] A list of changes to apply to this Custom Field Definition
    def update_field_definition(id:, body:)
        path = "/api/v1/CustomFieldDefinitions/#{id}"
        @connection.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end

    ##
    # Deletes the Custom Field Definition referred to by this unique identifier.
    #
    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a core definition for each object.  The core definition is intended to represent a level of compatibility that provides support across most accounting systems and products.  When a user or developer requires information beyond this core definition, you can use Custom Fields to represent this information.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Custom Field Definition to delete
    def delete_field_definition(id:)
        path = "/api/v1/CustomFieldDefinitions/#{id}"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Creates one or more Custom Field Definitions and returns the records as created.
    #
    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a core definition for each object.  The core definition is intended to represent a level of compatibility that provides support across most accounting systems and products.  When a user or developer requires information beyond this core definition, you can use Custom Fields to represent this information.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param body [CustomFieldDefinitionModel] The Custom Field Definitions to create
    def create_field_definitions(body:)
        path = "/api/v1/CustomFieldDefinitions"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Queries Custom Field Definitions within the Lockstep platform using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a core definition for each object.  The core definition is intended to represent a level of compatibility that provides support across most accounting systems and products.  When a user or developer requires information beyond this core definition, you can use Custom Fields to represent this information.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No additional data collections are currently defined on this object, but may be supported in the future.
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_field_definitions(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/CustomFieldDefinitions/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
