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
    # An Attachment Link represents a single link between any nestable object and an attachment
    class AttachmentLinkModel

        ##
        # Initialize the AttachmentLinkModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @attachment_id = params.dig(:attachment_id)
            @object_key = params.dig(:object_key)
            @table_key = params.dig(:table_key)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The unique ID of an attachment record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :attachment_id

        ##
        # @return [Uuid] An Attachment is connected to an existing item within the Lockstep Platform by the fields `TableKey` and `ObjectKey`. For example, an Attachment connected to Invoice 12345 would have a `TableKey` value of `Invoice` and an `ObjectKey` value of `12345`. The `ObjectKey` value contains the primary key of the record within the Lockstep Platform to which this Attachment is connected. For more information, see [linking metadata to an object](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :object_key

        ##
        # @return [String] An Attachment is connected to an existing item within the Lockstep Platform by the fields `TableKey` and `ObjectKey`. For example, an Attachment connected to Invoice 12345 would have a `TableKey` value of `Invoice` and an `ObjectKey` value of `12345`. The `TableKey` value contains the name of the table within the Lockstep Platform to which this Attachment is connected. For more information, see [linking metadata to an object](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :table_key

        ##
        # @return [Date-time] The date the Attachment Link was created.
        attr_accessor :created

        ##
        # @return [Uuid] The unique ID of the [UserAccount](https://developer.lockstep.io/docs/useraccountmodel) of the user who created this Attachment Link.
        attr_accessor :created_user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'attachmentId' => @attachment_id,
                'objectKey' => @object_key,
                'tableKey' => @table_key,
                'created' => @created,
                'createdUserId' => @created_user_id,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
