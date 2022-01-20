#  An Activity contains information about work being done on a specific accounting task.
#  You can use Activities to track information about who has been assigned a specific task,
#  the current status of the task, the name and description given for the particular task,
#  the priority of the task, and any amounts collected, paid, or credited for the task.
require 'json'

class Activity 

    attr_accessor :company_id, :activity_type_code, :activity_name, :activity_description, :activity_status , :is_open, \
                  :priority, :user_assigned_to, :date_assigned, :date_closed, :snooze_until_date, :amount_collected, \
                  :amount_paid, :credit_given, :is_unread, :is_archived

    def initialize(params = {})

        @company_id = params.fetch(:company_id) # The ID of the company to which this activity belongs.
        @activity_type_code = params.fetch(:activity_type_code) # The type code of the activity
        @activity_name = params.fetch(:activity_name) # The name of the activity. The name is a short name provided by the person who created the activity that can be displayed in a list.
        @activity_description = params.fetch(:activity_description) # A description of the activity. This field contains more detailed text about the activity and can be lengthy.
        @activity_status = params.fetch(:activity_status) # The status of the activity.
        @is_open = params.fetch(:is_open) # True if this activity is currently "open", which indicates that the activitiy is currently in progress.
        @priority = params.fetch(:priority) # The priority of the activity.
        @user_assigned_to = params.fetch(:user_assigned_to) # The ID of the user the activity is assigned to.
        @date_assigned = params.fetch(:date_assigned) # The date the activity was assigned.
        @date_closed = params.fetch(:date_closed) # The date the activity was closed.
        @snooze_until_date = params.fetch(:snooze_until_date) # If this activity has been "snoozed", this field will be non-null and will contain the date when the activity will be displayed. Until that date arrives, the activity will remain hidden.
        @amount_collected = params.fetch(:amount_collected) # Amount collected (if any) for the activity.
        @amount_paid = params.fetch(:amount_paid) # Amount paid (if any) for the activity.
        @credit_given = params.fetch(:credit_given) # Credit given (if any) for the activity.
        @is_unread = params.fetch(:is_unread) # True if this activity is to be shown in an "unread" state. When an activity is read by a person it is assigned to, this flag is set to false.
        @is_archived = params.fetch(:is_archived) # Activities may be archived when they should be hidden from the user. When this flag is true, this activity should be hidden.
    
    end

    def as_json(options={})
        {
            'companyId' => @company_id,
            'activityTypeCode' => @activity_type_code,
            'activityName' => @activity_name,
            'activityDescription' => @activity_description,
            'activityStatus' => @activity_status,
            'isOpen' => @is_open,
            'priority' => @priority, 
            'userAssignedTo' => @user_assigned_to,
            'date_assigned' => @date_assigned,
            'dateClosed' => @date_closed,
            'snoozeUntilDate' => @snooze_until_date,
            'amountCollected' => @amount_collected, 
            'amountPaid' => @amount_paid,
            'creditGiven' => @credit_given, 
            'isUnread' => @is_unread,
            'isArchived' => @is_archived
        }
    end

    def to_json(*options)
        as_json(*options).to_json(*options)
    end

end
