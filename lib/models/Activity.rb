#  An Activity contains information about work being done on a specific accounting task.
    #  You can use Activities to track information about who has been assigned a specific task,
    #  the current status of the task, the name and description given for the particular task,
    #  the priority of the task, and any amounts collected, paid, or credited for the task.

class Activity 

    attr_accessor :activityId, :groupKey, :companyId, :activityTypeCode, :activityName, :activityDescription, :activityStatus , :isOpen \
                  :priority, :userAssignedTo, :dateAssigned, :dateClosed, :snoozeUntilDate, :created, :createdUserId, :modified \
                  :modifiedUserId, :amountCollected, :amountPaid, :creditGiven, :isUnread, :isArchived, :attachments, :notes, \
                  :customFieldDefinitions, :customFieldValues

    def initialize(params = {})

        @activityId = params.fetch(:activityId) # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        @groupKey = params.fetch(:groupKey) # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        @companyId = params.fetch(:companyId) # The ID of the company to which this activity belongs.
        @activityTypeCode = params.fetch(:activityTypeCode) # The type code of the activity
        @activityName = params.fetch(:activityName) # The name of the activity. The name is a short name provided by the person who created the activity that can be displayed in a list.
        @activityDescription = params.fetch(:activityDescription) # A description of the activity. This field contains more detailed text about the activity and can be lengthy.
        @activityStatus = params.fetch(:activityStatus) # The status of the activity.
        @isOpen = params.fetch(:isOpen) # True if this activity is currently "open", which indicates that the activitiy is currently in progress.
        @priority = params.fetch(:priority) # The priority of the activity.
        @userAssignedTo = params.fetch(:userAssignedTo) # The ID of the user the activity is assigned to.
        @dateAssigned = params.fetch(:dateAssigned) # The date the activity was assigned.
        @dateClosed = params.fetch(:dateClosed) # The date the activity was closed.
        @snoozeUntilDate = params.fetch(:snoozeUntilDate) # If this activity has been "snoozed", this field will be non-null and will contain the date when the activity will be displayed. Until that date arrives, the activity will remain hidden.
        @created = params.fetch(:created) # The date on which this activity was created.
        @createdUserId = params.fetch(:createdUserId) # The ID of the user who created this activity.
        @modified = params.fetch(:modified) # The date on which this activity was last modified.
        @modifiedUserId = params.fetch(:modifiedUserId) # The ID of the user who last modified this activity.
        @amountCollected = params.fetch(:amountCollected) # Amount collected (if any) for the activity.
        @amountPaid = params.fetch(:amountPaid) # Amount paid (if any) for the activity.
        @creditGiven = params.fetch(:creditGiven) # Credit given (if any) for the activity.
        @isUnread = params.fetch(:isUnread) # True if this activity is to be shown in an "unread" state. When an activity is read by a person it is assigned to, this flag is set to false.
        @isArchived = params.fetch(:isArchived) # Activities may be archived when they should be hidden from the user. When this flag is true, this activity should be hidden.
        @attachments = params.fetch(:attachments) # All attachments attached to applied activity. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        @notes = params.fetch(:notes) # All notes attached to this applied activity. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        @customFieldDefinitions = params.fetch(:customFieldDefinitions) # All definitions attached to this applied activity. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        @customFieldValues = params.fetch(:customFieldValues) # All values attached to this activity. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.

        
    end
end