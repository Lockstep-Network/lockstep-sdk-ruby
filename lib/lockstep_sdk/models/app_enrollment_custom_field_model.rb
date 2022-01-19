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
    class appEnrollmentCustomFieldModel
        # @return [uuid] Unique id for the app enrollment
        attr_accessor :app_enrollment_id
        # @return [uuid] Id of enrolled app
        attr_accessor :app_id
        # @return [string] The name of the application
        attr_accessor :name
        # @return [string] Tag for what type of app the application is
        attr_accessor :app_type
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] Unique Id for the custom field definition
        attr_accessor :custom_field_definition_id
        # @return [string] Text to display in-application for custom field
        attr_accessor :custom_field_label
        # @return [string] Data type of the custom field definition
        attr_accessor :data_type
        # @return [int32] Used for display logic when multiple app enrollment custom fields exist
        attr_accessor :sort_order
        # @return [string] String of data for field
        attr_accessor :string_value
        # @return [double] Number data for field
        attr_accessor :numeric_value
    end
end
