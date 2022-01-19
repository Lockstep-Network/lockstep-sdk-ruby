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

    # Represents an item belonging to the activity stream.
    class activityStreamItemModel
        # @return [uuid] The object key of the activity stream item.
        attr_accessor :object_key
        # @return [string] The type code of the activity stream item.
        attr_accessor :activity_stream_type
        # @return [string] The text body description for this Activity Stream Item.
        attr_accessor :text_value
        # @return [date-time] The date on which this activity stream item was created.
        attr_accessor :created
        # @return [uuid] The ID of the user who created this activity.
        attr_accessor :created_user_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The sender's email address if activity stream item is an Email.
        attr_accessor :from_email_address
        # @return [string] The recipient's email address if activity stream item is an Email.
        attr_accessor :to_email_address
        # @return [string] The name of the contact sending the activity otherwise null.
        attr_accessor :from_contact_name
        # @return [string] The name of the contact sending the activity otherwise null.
        attr_accessor :to_contact_name
    end
end
