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
    class ActivityStreamItemModel

        # Initialize the ActivityStreamItemModel using the provided prototype
        def initialize(params = {})
            @object_key = params.fetch(:object_key)
            @activity_stream_type = params.fetch(:activity_stream_type)
            @text_value = params.fetch(:text_value)
            @created = params.fetch(:created)
            @created_user_id = params.fetch(:created_user_id)
            @group_key = params.fetch(:group_key)
            @from_email_address = params.fetch(:from_email_address)
            @to_email_address = params.fetch(:to_email_address)
            @from_contact_name = params.fetch(:from_contact_name)
            @to_contact_name = params.fetch(:to_contact_name)
        end

        # @return [Uuid] The object key of the activity stream item.
        attr_accessor :object_key
        # @return [String] The type code of the activity stream item.
        attr_accessor :activity_stream_type
        # @return [String] The text body description for this Activity Stream Item.
        attr_accessor :text_value
        # @return [Date-time] The date on which this activity stream item was created.
        attr_accessor :created
        # @return [Uuid] The ID of the user who created this activity.
        attr_accessor :created_user_id
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [String] The sender's email address if activity stream item is an Email.
        attr_accessor :from_email_address
        # @return [String] The recipient's email address if activity stream item is an Email.
        attr_accessor :to_email_address
        # @return [String] The name of the contact sending the activity otherwise null.
        attr_accessor :from_contact_name
        # @return [String] The name of the contact sending the activity otherwise null.
        attr_accessor :to_contact_name
    end
end
