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
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a
    # core definition for each object.  The core definition is intended to represent a level of compatibility
    # that provides support across most accounting systems and products.  When a user or developer requires
    # information beyond this core definition, you can use Custom Fields to represent this information.
    # 
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    class CustomFieldDefinitionModel

        # Initialize the CustomFieldDefinitionModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @custom_field_definition_id = params.dig(:custom_field_definition_id)
            @table_key = params.dig(:table_key)
            @app_id = params.dig(:app_id)
            @custom_field_label = params.dig(:custom_field_label)
            @data_type = params.dig(:data_type)
            @sort_order = params.dig(:sort_order)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @app_enrollment_id = params.dig(:app_enrollment_id)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :custom_field_definition_id
        # @return [String] Table to which this definition belongs
        attr_accessor :table_key
        # @return [Uuid] Id of app this definition belongs to
        attr_accessor :app_id
        # @return [String] Text to display in-application for custom field
        attr_accessor :custom_field_label
        # @return [String] Data type of this definition
        attr_accessor :data_type
        # @return [Int32] Used for display logic when multiple custom fields exist
        attr_accessor :sort_order
        # @return [Date-time] Date created
        attr_accessor :created
        # @return [Uuid] Id of user who created this definition
        attr_accessor :created_user_id
        # @return [Date-time] Date modified
        attr_accessor :modified
        # @return [Uuid] Id of user who modified this definition
        attr_accessor :modified_user_id
        # @return [Uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id

        def as_json(options={})
            {
                'groupKey' => @group_key,
                'customFieldDefinitionId' => @custom_field_definition_id,
                'tableKey' => @table_key,
                'appId' => @app_id,
                'customFieldLabel' => @custom_field_label,
                'dataType' => @data_type,
                'sortOrder' => @sort_order,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'appEnrollmentId' => @app_enrollment_id,
            }
        end

        def to_json(*options)
            [#{as_json(*options).to_json(*options)}]
        end
    end
end
