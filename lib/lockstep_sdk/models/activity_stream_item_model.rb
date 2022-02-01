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
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # Represents an item belonging to the activity stream.
    class ActivityStreamItemModel

        ##
        # Initialize the ActivityStreamItemModel using the provided prototype
        def initialize(params = {})
            @object_key = params.dig(:object_key)
            @activity_stream_type = params.dig(:activity_stream_type)
            @text_value = params.dig(:text_value)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @group_key = params.dig(:group_key)
            @from_email_address = params.dig(:from_email_address)
            @to_email_address = params.dig(:to_email_address)
            @from_contact_name = params.dig(:from_contact_name)
            @to_contact_name = params.dig(:to_contact_name)
        end

        ##
        # @return [Uuid] The object key of the activity stream item.
        attr_accessor :object_key

        ##
        # @return [String] The type code of the activity stream item.
        attr_accessor :activity_stream_type

        ##
        # @return [String] The text body description for this Activity Stream Item.
        attr_accessor :text_value

        ##
        # @return [Date-time] The date on which this activity stream item was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID of the user who created this activity.
        attr_accessor :created_user_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The sender's email address if activity stream item is an Email.
        attr_accessor :from_email_address

        ##
        # @return [String] The recipient's email address if activity stream item is an Email.
        attr_accessor :to_email_address

        ##
        # @return [String] The name of the contact sending the activity otherwise null.
        attr_accessor :from_contact_name

        ##
        # @return [String] The name of the contact sending the activity otherwise null.
        attr_accessor :to_contact_name

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'objectKey' => @object_key,
                'activityStreamType' => @activity_stream_type,
                'textValue' => @text_value,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'groupKey' => @group_key,
                'fromEmailAddress' => @from_email_address,
                'toEmailAddress' => @to_email_address,
                'fromContactName' => @from_contact_name,
                'toContactName' => @to_contact_name,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
