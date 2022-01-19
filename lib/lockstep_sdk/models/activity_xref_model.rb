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

    class activityXRefModel
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this is added to the Lockstep platform.
        attr_accessor :activity_xref_id
        # @return [uuid] The ID of the activity to which this reference belongs.
        attr_accessor :activity_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The name of the table the activity reference is associated with
        attr_accessor :table_key
        # @return [string] The ID of the object the activity reference is associated with
        attr_accessor :object_key
    end
end
