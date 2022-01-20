#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayanan <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk

    # A note is a customizable text string that can be attached to various account attributes
    # within Lockstep. You can use notes for internal communication, correspondence with
    # clients, or personal reminders. The Note Model represents a note and a number of
    # different metadata attributes related to the creation, storage, and ownership of the note.
    # 
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    class NoteModel

        # Initialize the NoteModel using the provided prototype
        def initialize(params = {})
            @note_id = params.dig(:note_id)
            @group_key = params.dig(:group_key)
            @table_key = params.dig(:table_key)
            @object_key = params.dig(:object_key)
            @note_text = params.dig(:note_text)
            @note_type = params.dig(:note_type)
            @is_archived = params.dig(:is_archived)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @created_user_name = params.dig(:created_user_name)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @recipient_name = params.dig(:recipient_name)
        end

        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :note_id
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [String] The name of the table the note is associated with
        attr_accessor :table_key
        # @return [Uuid] The ID of the object the note is associated with
        attr_accessor :object_key
        # @return [String] The text of the note
        attr_accessor :note_text
        # @return [String] The type of the note
        attr_accessor :note_type
        # @return [Boolean] Flag indicating if the note has been archived
        attr_accessor :is_archived
        # @return [Date-time] The date the note was created
        attr_accessor :created
        # @return [Uuid] The ID of the user who created the note
        attr_accessor :created_user_id
        # @return [String] The name of the user who created the note
        attr_accessor :created_user_name
        # @return [Uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [String] The person to whom this note is intended for.
        attr_accessor :recipient_name
    end

    def as_json(options={})
        {
            'noteId' => @note_id,
            'groupKey' => @group_key,
            'tableKey' => @table_key,
            'objectKey' => @object_key,
            'noteText' => @note_text,
            'noteType' => @note_type,
            'isArchived' => @is_archived,
            'created' => @created,
            'createdUserId' => @created_user_id,
            'createdUserName' => @created_user_name,
            'appEnrollmentId' => @app_enrollment_id,
            'recipientName' => @recipient_name,
        }
    end

    def to_json(*options)
        as_json(*options).to_json(*options)
    end
end
