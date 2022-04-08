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


require 'json'

module LockstepSdk

    ##
    # App enrollment and custom field merged into one
    class AppEnrollmentCustomFieldModel

        ##
        # Initialize the AppEnrollmentCustomFieldModel using the provided prototype
        def initialize(params = {})
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @app_id = params.dig(:app_id)
            @name = params.dig(:name)
            @app_type = params.dig(:app_type)
            @group_key = params.dig(:group_key)
            @custom_field_definition_id = params.dig(:custom_field_definition_id)
            @custom_field_label = params.dig(:custom_field_label)
            @data_type = params.dig(:data_type)
            @sort_order = params.dig(:sort_order)
            @string_value = params.dig(:string_value)
            @numeric_value = params.dig(:numeric_value)
            @value = params.dig(:value)
        end

        ##
        # @return [Uuid] Unique id for the app enrollment
        attr_accessor :app_enrollment_id

        ##
        # @return [Uuid] Id of enrolled app
        attr_accessor :app_id

        ##
        # @return [String] The name of the application
        attr_accessor :name

        ##
        # @return [String] Tag for what type of app the application is
        attr_accessor :app_type

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] Unique Id for the custom field definition
        attr_accessor :custom_field_definition_id

        ##
        # @return [String] Text to display in-application for custom field
        attr_accessor :custom_field_label

        ##
        # @return [String] Data type of the custom field definition
        attr_accessor :data_type

        ##
        # @return [Int32] Used for display logic when multiple app enrollment custom fields exist
        attr_accessor :sort_order

        ##
        # @return [String] String of data for field
        attr_accessor :string_value

        ##
        # @return [Double] Number data for field
        attr_accessor :numeric_value

        ##
        # @return [String] Value for the field
        attr_accessor :value

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'appEnrollmentId' => @app_enrollment_id,
                'appId' => @app_id,
                'name' => @name,
                'appType' => @app_type,
                'groupKey' => @group_key,
                'customFieldDefinitionId' => @custom_field_definition_id,
                'customFieldLabel' => @custom_field_label,
                'dataType' => @data_type,
                'sortOrder' => @sort_order,
                'stringValue' => @string_value,
                'numericValue' => @numeric_value,
                'value' => @value,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
