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
    # An Attachment is a file that can be attached to various account attributes within Lockstep.
    # This data model contains metadata about the attachment.  You can upload and download attachments
    # into the Lockstep Platform along with this metadata.  Attachments can be used for invoices, payments,
    # legal documents, or any other external files that you wish to track.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
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
            @erp_key = params.dig(:erp_key)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @attachment_type = params.dig(:attachment_type)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :attachment_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] An Attachment is connected to an existing item within the Lockstep Platform by the fields `TableKey` and `ObjectKey`. For example, an Attachment connected to Invoice 12345 would have a `TableKey` value of `Invoice` and an `ObjectKey` value of `12345`. The `TableKey` value contains the name of the table within the Lockstep Platform to which this Attachment is connected. For more information, see [linking metadata to an object](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :table_key

        ##
        # @return [Uuid] An Attachment is connected to an existing item within the Lockstep Platform by the fields `TableKey` and `ObjectKey`. For example, an Attachment connected to Invoice 12345 would have a `TableKey` value of `Invoice` and an `ObjectKey` value of `12345`. The `ObjectKey` value contains the primary key of the record within the Lockstep Platform to which this Attachment is connected. For more information, see [linking metadata to an object](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :object_key

        ##
        # @return [String] An Attachment represents a file that was uploaded to the Lockstep Platform. This field contains the original name of the file on disk, without its extension.
        attr_accessor :file_name

        ##
        # @return [String] An Attachment represents a file that was uploaded to the Lockstep Platform. This field contains the original extension name of the file on disk.
        attr_accessor :file_ext

        ##
        # @return [Uuid] DEPRECATED: This field is replaced by `AttachmentType`.
        attr_accessor :attachment_type_id

        ##
        # @return [Boolean] A flag indicating whether this Attachment is archived (also known as hidden or deleted). When you call [ArchiveAttachment](https://developer.lockstep.io/reference/delete_api-v1-attachments-id) this field will be set to true. You should avoid displaying Attachments with the IsArchived field set to true in your user interface.
        attr_accessor :is_archived

        ##
        # @return [Uuid] DEPRECATED - Do not use
        attr_accessor :origin_attachment_id

        ##
        # @return [Boolean] Flag for if LS clients can see this file
        attr_accessor :view_internal

        ##
        # @return [Boolean] Flag for if Vendors and customers can see this file
        attr_accessor :view_external

        ##
        # @return [String] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported from a financial system, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [Uuid] The AppEnrollmentId of the application that imported this record. For accounts with more than one financial system connected, this field identifies the originating financial system that produced this record. This value is null if this record was not loaded from an external ERP or financial system.
        attr_accessor :app_enrollment_id

        ##
        # @return [Date-time] The date the attachment was created.
        attr_accessor :created

        ##
        # @return [Uuid] The unique ID of the [UserAccount](https://developer.lockstep.io/docs/useraccountmodel) of the user who created this Attachment.
        attr_accessor :created_user_id

        ##
        # @return [String] A text string describing the type of this Attachment.
        attr_accessor :attachment_type

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
                'erpKey' => @erp_key,
                'appEnrollmentId' => @app_enrollment_id,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'attachmentType' => @attachment_type,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
