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

    # A note is a customizable text string that can be attached to various account attributes
    # within Lockstep. You can use notes for internal communication, correspondence with
    # clients, or personal reminders. The Note Model represents a note and a number of
    # different metadata attributes related to the creation, storage, and ownership of the note.
    # 
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    class noteModel
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :note_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The name of the table the note is associated with
        attr_accessor :table_key
        # @return [uuid] The ID of the object the note is associated with
        attr_accessor :object_key
        # @return [string] The text of the note
        attr_accessor :note_text
        # @return [string] The type of the note
        attr_accessor :note_type
        # @return [boolean] Flag indicating if the note has been archived
        attr_accessor :is_archived
        # @return [date-time] The date the note was created
        attr_accessor :created
        # @return [uuid] The ID of the user who created the note
        attr_accessor :created_user_id
        # @return [string] The name of the user who created the note
        attr_accessor :created_user_name
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [string] The person to whom this note is intended for.
        attr_accessor :recipient_name
    end
end
