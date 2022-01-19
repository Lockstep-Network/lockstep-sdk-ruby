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

    # An Activity contains information about work being done on a specific accounting task.
    # You can use Activities to track information about who has been assigned a specific task,
    # the current status of the task, the name and description given for the particular task,
    # the priority of the task, and any amounts collected, paid, or credited for the task.
    class activityModel
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :activity_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The ID of the company to which this activity belongs.
        attr_accessor :company_id
        # @return [string] The type code of the activity
        attr_accessor :activity_type_code
        # @return [string] The name of the activity. The name is a short name provided by the person who created the activity that can be displayed in a list.
        attr_accessor :activity_name
        # @return [string] A description of the activity. This field contains more detailed text about the activity and can be lengthy.
        attr_accessor :activity_description
        # @return [string] The status of the activity.
        attr_accessor :activity_status
        # @return [boolean] True if this activity is currently "open", which indicates that the activitiy is currently in progress.
        attr_accessor :is_open
        # @return [string] The priority of the activity.
        attr_accessor :priority
        # @return [uuid] The ID of the user the activity is assigned to.
        attr_accessor :user_assigned_to
        # @return [date-time] The date the activity was assigned.
        attr_accessor :date_assigned
        # @return [date-time] The date the activity was closed.
        attr_accessor :date_closed
        # @return [date-time] If this activity has been "snoozed", this field will be non-null and will contain the date when the activity will be displayed. Until that date arrives, the activity will remain hidden.
        attr_accessor :snooze_until_date
        # @return [date-time] The date on which this activity was created.
        attr_accessor :created
        # @return [uuid] The ID of the user who created this activity.
        attr_accessor :created_user_id
        # @return [date-time] The date on which this activity was last modified.
        attr_accessor :modified
        # @return [uuid] The ID of the user who last modified this activity.
        attr_accessor :modified_user_id
        # @return [double] Amount collected (if any) for the activity.
        attr_accessor :amount_collected
        # @return [double] Amount paid (if any) for the activity.
        attr_accessor :amount_paid
        # @return [double] Credit given (if any) for the activity.
        attr_accessor :credit_given
        # @return [boolean] True if this activity is to be shown in an "unread" state. When an activity is read by a person it is assigned to, this flag is set to false.
        attr_accessor :is_unread
        # @return [boolean] Activities may be archived when they should be hidden from the user. When this flag is true, this activity should be hidden.
        attr_accessor :is_archived
        # @return [companyModel] The company associated with the activity To retrieve this collection, specify `Company` in the "Include" parameter for your query.
        attr_accessor :company
        # @return [string] The name of the user the activity is assigned to
        attr_accessor :user_assigned_to_name
        # @return [attachmentModel] All attachments attached to applied activity. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [noteModel] All notes attached to this applied activity. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [customFieldDefinitionModel] All definitions attached to this applied activity. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [customFieldValueModel] All values attached to this activity. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
        # @return [activityXRefModel] All references attached to this applied activity. To retrieve this collection, specify `References` in the "Include" parameter for your query.
        attr_accessor :references
    end
end
