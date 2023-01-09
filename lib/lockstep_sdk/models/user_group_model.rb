#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2023 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2023 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # A UserGroup represents the groups that the user is a member of.
    # A user may have varying permissions/access within a Group.
    class UserGroupModel

        ##
        # Initialize the UserGroupModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @user_role = params.dig(:user_role)
            @group_name = params.dig(:group_name)
            @status = params.dig(:status)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The name of the Permission Level for the group.
        attr_accessor :user_role

        ##
        # @return [String] The name of the group
        attr_accessor :group_name

        ##
        # @return [String] The user's status in the group
        attr_accessor :status

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'userRole' => @user_role,
                'groupName' => @group_name,
                'status' => @status,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
