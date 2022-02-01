#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayan B S <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'awrence'

class CustomFieldValuesClient

    ##
    # Initialize the CustomFieldValuesClient class with a lockstepsdk instance.
    # @param lockstepsdk [LockstepApi] The Lockstep API client object for this connection
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    ##
    # Retrieves all Custom Field Definitions.
    #
    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a core definition for each object.  The core definition is intended to represent a level of compatibility that provides support across most accounting systems and products.  When a user or developer requires information beyond this core definition, you can use Custom Fields to represent this information.  See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param definition_id [uuid] The unique Lockstep Platform ID number of the Custom Field Definition for the Custom Field Value to retrieve.
    # @param record_key [uuid] The unique Lockstep Platform ID number of the Lockstep Platform object the Custom Field Value is attached to.
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: CustomFieldDefinition
    def retrieve_field(definition_id:, record_key:, include_param:)
        path = "/api/v1/CustomFieldValues/#{definitionId}/#{recordKey}"
        params = {:include => include_param}
        @lockstepsdk.request(:get, path, nil, params)
    end

    ##
    # Updates an existing Custom Field with the information supplied to this PATCH call.
    #
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.
    #
    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a core definition for each object.  The core definition is intended to represent a level of compatibility that provides support across most accounting systems and products.  When a user or developer requires information beyond this core definition, you can use Custom Fields to represent this information.  See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param definition_id [uuid] The unique Lockstep Platform ID number of the Custom Field Definition for the Custom Field Value to retrieve.
    # @param record_key [uuid] The unique Lockstep Platform ID number of the Lockstep Platform object the Custom Field Value is attached to.
    # @param body [object] A list of changes to apply to this Custom Field
    def update_field(definition_id:, record_key:, body:)
        path = "/api/v1/CustomFieldValues/#{definitionId}/#{recordKey}"
        @lockstepsdk.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end

    ##
    # Deletes the Custom Field referred to by this unique identifier.
    #
    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a core definition for each object.  The core definition is intended to represent a level of compatibility that provides support across most accounting systems and products.  When a user or developer requires information beyond this core definition, you can use Custom Fields to represent this information.  See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param definition_id [uuid] The unique Lockstep Platform ID number of the Custom Field Definition for the Custom Field Value to retrieve.
    # @param record_key [uuid] The unique Lockstep Platform ID number of the Lockstep Platform object the Custom Field Value is attached to.
    def delete_field(definition_id:, record_key:)
        path = "/api/v1/CustomFieldValues/#{definitionId}/#{recordKey}"
        @lockstepsdk.request(:delete, path, nil, nil)
    end

    ##
    # Creates one or more Custom Fields and returns the records as created.  A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a core definition for each object.  The core definition is intended to represent a level of compatibility that provides support across most accounting systems and products.  When a user or developer requires information beyond this core definition, you can use Custom Fields to represent this information.  See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param body [CustomFieldValueModel] The Custom Fields to create
    def create_fields(body:)
        path = "/api/v1/CustomFieldValues"
        @lockstepsdk.request(:post, path, body, nil)
    end

    ##
    # Queries Custom Fields within the Lockstep platform using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a core definition for each object.  The core definition is intended to represent a level of compatibility that provides support across most accounting systems and products.  When a user or developer requires information beyond this core definition, you can use Custom Fields to represent this information.  See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: CustomFieldDefinition
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_fields(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/CustomFieldValues/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @lockstepsdk.request(:get, path, nil, params)
    end
end
