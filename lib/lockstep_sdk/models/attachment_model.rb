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
# @version    2022.4
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # Represents a user uploaded attachment
    class AttachmentModel

        ##
        # Initialize the AttachmentModel using the provided prototype
        def initialize(params = {})
            @attachment_id = params.dig(:attachment_id)
            @group_key = params.dig(:group_key)
            @table_key = params.dig(:table_key)
            @object_key = params.dig(:object_key)
            @file_name = params.dig(:file_name)
            @file_ext = params.dig(:file_ext)
            @attachment_type_id = params.dig(:attachment_type_id)
            @is_archived = params.dig(:is_archived)
            @origin_attachment_id = params.dig(:origin_attachment_id)
            @view_internal = params.dig(:view_internal)
            @view_external = params.dig(:view_external)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :attachment_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The name of the table the attachment is associated with
        attr_accessor :table_key

        ##
        # @return [Uuid] The ID of the object the attachment is associated with
        attr_accessor :object_key

        ##
        # @return [String] Name of the file
        attr_accessor :file_name

        ##
        # @return [String] Extension type of the file
        attr_accessor :file_ext

        ##
        # @return [Uuid] Corresponding AttachmentType object to describe this attachment
        attr_accessor :attachment_type_id

        ##
        # @return [Boolean] Flag indicating the attachment was archived
        attr_accessor :is_archived

        ##
        # @return [Uuid] 
        attr_accessor :origin_attachment_id

        ##
        # @return [Boolean] Flag for if LS clients can see this file
        attr_accessor :view_internal

        ##
        # @return [Boolean] Flag for if Vendors and customers can see this file
        attr_accessor :view_external

        ##
        # @return [Date-time] The date the attachment was created
        attr_accessor :created

        ##
        # @return [Uuid] Id of the user who made the file
        attr_accessor :created_user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'attachmentId' => @attachment_id,
                'groupKey' => @group_key,
                'tableKey' => @table_key,
                'objectKey' => @object_key,
                'fileName' => @file_name,
                'fileExt' => @file_ext,
                'attachmentTypeId' => @attachment_type_id,
                'isArchived' => @is_archived,
                'originAttachmentId' => @origin_attachment_id,
                'viewInternal' => @view_internal,
                'viewExternal' => @view_external,
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
