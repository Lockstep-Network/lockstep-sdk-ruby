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


require 'json'

module LockstepSdk

    ##
    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a
    # core definition for each object.  The core definition is intended to represent a level of compatibility
    # that provides support across most accounting systems and products.  When a user or developer requires
    # information beyond this core definition, you can use Custom Fields to represent this information.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    class CustomFieldValueModel

        ##
        # Initialize the CustomFieldValueModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @custom_field_definition_id = params.dig(:custom_field_definition_id)
            @record_key = params.dig(:record_key)
            @string_value = params.dig(:string_value)
            @numeric_value = params.dig(:numeric_value)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @custom_field_definition = params.dig(:custom_field_definition)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :custom_field_definition_id

        ##
        # @return [Uuid] Additional key if source table doesn't have a unique id
        attr_accessor :record_key

        ##
        # @return [String] String of data for field
        attr_accessor :string_value

        ##
        # @return [Double] Number data for field
        attr_accessor :numeric_value

        ##
        # @return [Date-time] Date created
        attr_accessor :created

        ##
        # @return [Uuid] Id of user who created this value
        attr_accessor :created_user_id

        ##
        # @return [Date-time] Date modified
        attr_accessor :modified

        ##
        # @return [Uuid] Id of user who modified this value
        attr_accessor :modified_user_id

        ##
        # @return [Uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id

        ##
        # @return [CustomFieldDefinitionModel] Definition of the value
        attr_accessor :custom_field_definition

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'customFieldDefinitionId' => @custom_field_definition_id,
                'recordKey' => @record_key,
                'stringValue' => @string_value,
                'numericValue' => @numeric_value,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'appEnrollmentId' => @app_enrollment_id,
                'customFieldDefinition' => @custom_field_definition,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
