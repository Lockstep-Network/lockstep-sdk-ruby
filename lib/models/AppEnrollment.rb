#  An AppEnrollment represents an app that has been enrolled to the current account.  When you sign up for an
#  app using the Lockstep Platform, you obtain an enrollment record for that app.  Example types of apps include
#  connectors and feature enhancement apps. The App Enrollment object contains information about this app, its
#  configuration, and settings.
#  
#  See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.

class AppEnrollment

    attr_accessor :appEnrollmentId, :appId, :groupKey, :isActive, :created, :createdUserId, :modified, :modifiedUserId, :cronSettings \
                  :syncScheduleIsActive, :app, :customFieldDefinitions, :customFieldValues, :lastSync, :erpInfo, :connectorInfo

    def initialize(params={})

        @appEnrollmentId = params.fetch(:appEnrollmentId) # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        @appId = params.fetch(:appId) # The ID number of the Application that this enrollment represents. You can fetch information about this Application object by specifying `App` in the "Include" parameter for your request.
        @groupKey = params.fetch(:groupKey) # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        @isActive = params.fetch(:isActive) # Determines whether the app enrollment is in use
        @created = params.fetch(:created) # Created date
        @createdUserId = params.fetch(:createdUserId) # Created user ID
        @modified = params.fetch(:modified) # Last modified date
        @modifiedUserId = params.fetch(:modifiedUserId) # Last user ID to modify
        @cronSettings = params.fetch(:cronSettings) # Stores schedule information for the application enrollment see https://en.wikipedia.org/wiki/Cron
        @syncScheduleIsActive = params.fetch(:syncScheduleIsActive) # Flag indicating if the Sync process should be ran on the specified schedule
        @app = params.fetch(:app) # The Application to which this AppEnrollment belongs. Contains general name, description, logo, and other metadata about this application. To retrieve this object, specify `App` in the "Include" parameter for your query.
        @CustomFieldDefinitions = params.fetch(:customFieldDefinitions) # All definitions attached to this app. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        @customFieldValues = params.fetch(:customFieldValues) # All values attached to this app. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        @lastSync = params.fetch(:lastSync) # Data about the last sync attached to this app enrollment To retrieve this collection, specify `LastSync` in the "Include" parameter for your query.
        @erpInfo = params.fetch(:erpInfo) # Use `ConnectorInfo` instead.
        @connectorInfo = params.fetch(:connectorInfo) # Optional data necessary to create an app enrollment for a supported connector. Only enter relevant fields for the given connector.
    end

end