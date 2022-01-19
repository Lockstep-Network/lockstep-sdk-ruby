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

    # Represents a role for a user
    class userRoleModel
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :user_role_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The name of the user role
        attr_accessor :user_role_name
        # @return [date-time] The date that the user role was created
        attr_accessor :created
        # @return [uuid] The ID of the user who created the user role
        attr_accessor :created_user_id
        # @return [date-time] The date the user role was last modified
        attr_accessor :modified
        # @return [uuid] The ID of the user who last modified the user role
        attr_accessor :modified_user_id
    end
end
