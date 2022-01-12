#  App enrollment and custom field merged into one

class AppEnrollmentCustomFieldModel

    attr_accessor :appEnrollmentId, :appId, :name, :appType, :groupKey, :CustomFieldDefinitionId, :customFieldLabel, :dataType \
                  :sortOrder, :stringValue, :numericValue

    def initialize(params={})

        @appEnrollmentId = params.fetch(:appEnrollmentId) # Unique id for the app enrollment
        @appId = params.fetch(:appId) # Id of enrolled app
        @name = params.fetch(:name) # The name of the application
        @appType = params.fetch(:appType) # Tag for what type of app the application is
        @groupKey = params.fetch(:groupKey) # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        @customFieldDefinitionId = params.fetch(:customFieldDefinitionId) # Unique Id for the custom field definition
        @customFieldLabel = params.fetch(:customFieldLabel) # Text to display in-application for custom field
        @dataType = params.fetch(:dataType) # Data type of the custom field definition
        @sortOrder = params.fetch(:sortOrder) # Used for display logic when multiple app enrollment custom fields exist
        @stringValue = params.fetch(:stringValue) # String of data for field
        @numericValue = params.fetch(:numericValue) # Number data for field
    end

end