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


module LockstepSdk

    # App enrollment and custom field merged into one
    class AppEnrollmentCustomFieldModel

        # Initialize the AppEnrollmentCustomFieldModel using the provided prototype
        def initialize(params = {})
            @app_enrollment_id = params.fetch(:app_enrollment_id)
            @app_id = params.fetch(:app_id)
            @name = params.fetch(:name)
            @app_type = params.fetch(:app_type)
            @group_key = params.fetch(:group_key)
            @custom_field_definition_id = params.fetch(:custom_field_definition_id)
            @custom_field_label = params.fetch(:custom_field_label)
            @data_type = params.fetch(:data_type)
            @sort_order = params.fetch(:sort_order)
            @string_value = params.fetch(:string_value)
            @numeric_value = params.fetch(:numeric_value)
        end

        # @return [Uuid] Unique id for the app enrollment
        attr_accessor :app_enrollment_id
        # @return [Uuid] Id of enrolled app
        attr_accessor :app_id
        # @return [String] The name of the application
        attr_accessor :name
        # @return [String] Tag for what type of app the application is
        attr_accessor :app_type
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] Unique Id for the custom field definition
        attr_accessor :custom_field_definition_id
        # @return [String] Text to display in-application for custom field
        attr_accessor :custom_field_label
        # @return [String] Data type of the custom field definition
        attr_accessor :data_type
        # @return [Int32] Used for display logic when multiple app enrollment custom fields exist
        attr_accessor :sort_order
        # @return [String] String of data for field
        attr_accessor :string_value
        # @return [Double] Number data for field
        attr_accessor :numeric_value
    end
end
