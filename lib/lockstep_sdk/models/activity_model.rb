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
    # An Activity contains information about work being done on a specific accounting task.
    # You can use Activities to track information about who has been assigned a specific task,
    # the current status of the task, the name and description given for the particular task,
    # the priority of the task, and any amounts collected, paid, or credited for the task.
    class ActivityModel

        ##
        # Initialize the ActivityModel using the provided prototype
        def initialize(params = {})
            @activity_id = params.dig(:activity_id)
            @group_key = params.dig(:group_key)
            @company_id = params.dig(:company_id)
            @activity_type_code = params.dig(:activity_type_code)
            @activity_name = params.dig(:activity_name)
            @activity_description = params.dig(:activity_description)
            @activity_status = params.dig(:activity_status)
            @is_open = params.dig(:is_open)
            @priority = params.dig(:priority)
            @user_assigned_to = params.dig(:user_assigned_to)
            @date_assigned = params.dig(:date_assigned)
            @date_closed = params.dig(:date_closed)
            @snooze_until_date = params.dig(:snooze_until_date)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @amount_collected = params.dig(:amount_collected)
            @amount_paid = params.dig(:amount_paid)
            @credit_given = params.dig(:credit_given)
            @is_unread = params.dig(:is_unread)
            @is_archived = params.dig(:is_archived)
            @company = params.dig(:company)
            @user_assigned_to_name = params.dig(:user_assigned_to_name)
            @attachments = params.dig(:attachments)
            @notes = params.dig(:notes)
            @custom_field_definitions = params.dig(:custom_field_definitions)
            @custom_field_values = params.dig(:custom_field_values)
            @references = params.dig(:references)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :activity_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The ID of the company to which this activity belongs.
        attr_accessor :company_id

        ##
        # @return [String] The type code of the activity
        attr_accessor :activity_type_code

        ##
        # @return [String] The name of the activity. The name is a short name provided by the person who created the activity that can be displayed in a list.
        attr_accessor :activity_name

        ##
        # @return [String] A description of the activity. This field contains more detailed text about the activity and can be lengthy.
        attr_accessor :activity_description

        ##
        # @return [String] The status of the activity.
        attr_accessor :activity_status

        ##
        # @return [Boolean] True if this activity is currently "open", which indicates that the activitiy is currently in progress.
        attr_accessor :is_open

        ##
        # @return [String] The priority of the activity.
        attr_accessor :priority

        ##
        # @return [Uuid] The ID of the user the activity is assigned to.
        attr_accessor :user_assigned_to

        ##
        # @return [Date-time] The date the activity was assigned.
        attr_accessor :date_assigned

        ##
        # @return [Date-time] The date the activity was closed.
        attr_accessor :date_closed

        ##
        # @return [Date-time] If this activity has been "snoozed", this field will be non-null and will contain the date when the activity will be displayed. Until that date arrives, the activity will remain hidden.
        attr_accessor :snooze_until_date

        ##
        # @return [Date-time] The date on which this activity was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID of the user who created this activity.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date on which this activity was last modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The ID of the user who last modified this activity.
        attr_accessor :modified_user_id

        ##
        # @return [Double] Amount collected (if any) for the activity.
        attr_accessor :amount_collected

        ##
        # @return [Double] Amount paid (if any) for the activity.
        attr_accessor :amount_paid

        ##
        # @return [Double] Credit given (if any) for the activity.
        attr_accessor :credit_given

        ##
        # @return [Boolean] True if this activity is to be shown in an "unread" state. When an activity is read by a person it is assigned to, this flag is set to false.
        attr_accessor :is_unread

        ##
        # @return [Boolean] Activities may be archived when they should be hidden from the user. When this flag is true, this activity should be hidden.
        attr_accessor :is_archived

        ##
        # @return [CompanyModel] The company associated with the activity To retrieve this collection, specify `Company` in the "Include" parameter for your query.
        attr_accessor :company

        ##
        # @return [String] The name of the user the activity is assigned to
        attr_accessor :user_assigned_to_name

        ##
        # @return [AttachmentModel] All attachments attached to applied activity. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments

        ##
        # @return [NoteModel] All notes attached to this applied activity. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes

        ##
        # @return [CustomFieldDefinitionModel] All definitions attached to this applied activity. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions

        ##
        # @return [CustomFieldValueModel] All values attached to this activity. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values

        ##
        # @return [ActivityXRefModel] All references attached to this applied activity. To retrieve this collection, specify `References` in the "Include" parameter for your query.
        attr_accessor :references

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'activityId' => @activity_id,
                'groupKey' => @group_key,
                'companyId' => @company_id,
                'activityTypeCode' => @activity_type_code,
                'activityName' => @activity_name,
                'activityDescription' => @activity_description,
                'activityStatus' => @activity_status,
                'isOpen' => @is_open,
                'priority' => @priority,
                'userAssignedTo' => @user_assigned_to,
                'dateAssigned' => @date_assigned,
                'dateClosed' => @date_closed,
                'snoozeUntilDate' => @snooze_until_date,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'amountCollected' => @amount_collected,
                'amountPaid' => @amount_paid,
                'creditGiven' => @credit_given,
                'isUnread' => @is_unread,
                'isArchived' => @is_archived,
                'company' => @company,
                'userAssignedToName' => @user_assigned_to_name,
                'attachments' => @attachments,
                'notes' => @notes,
                'customFieldDefinitions' => @custom_field_definitions,
                'customFieldValues' => @custom_field_values,
                'references' => @references,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
