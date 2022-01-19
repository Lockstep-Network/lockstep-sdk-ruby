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

    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a
    # core definition for each object.  The core definition is intended to represent a level of compatibility
    # that provides support across most accounting systems and products.  When a user or developer requires
    # information beyond this core definition, you can use Custom Fields to represent this information.
    # 
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    class customFieldDefinitionModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :custom_field_definition_id
        # @return [string] Table to which this definition belongs
        attr_accessor :table_key
        # @return [uuid] Id of app this definition belongs to
        attr_accessor :app_id
        # @return [string] Text to display in-application for custom field
        attr_accessor :custom_field_label
        # @return [string] Data type of this definition
        attr_accessor :data_type
        # @return [int32] Used for display logic when multiple custom fields exist
        attr_accessor :sort_order
        # @return [date-time] Date created
        attr_accessor :created
        # @return [uuid] Id of user who created this definition
        attr_accessor :created_user_id
        # @return [date-time] Date modified
        attr_accessor :modified
        # @return [uuid] Id of user who modified this definition
        attr_accessor :modified_user_id
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
    end
end
