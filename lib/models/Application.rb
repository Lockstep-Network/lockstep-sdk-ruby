#  An Application represents a feature available to customers within the Lockstep Platform.  You can create
#  Applications by working with your Lockstep business development manager and publish them on the platform
#  so that customers can browse and find your Application on the Lockstep Platform Marketplace.  When a
#  customer adds an Application to their account, they obtain an AppEnrollment which represents that customer's
#  instance of this Application.  The customer-specific AppEnrollment contains a customer's configuration data
#  for the Application, which is not customer-specific.
#  
#  See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
#  --swaggerCategory:Platform

class Application

    attr_accessor :appId, :name, :description, :appType, :ownerId, :projectUrl, :iconUrl, :priceTerms, :createdUserId, :modifiedUserId \
                  :created, :modified, :isActive, :wikiURL, :groupKey, :notes, :attachments, :customFieldDefinitions, :customFieldValues

    def initialize(params={})

        @appId = params.fetch(:appId) # A unique code identifying this application
        @name = params.fetch(:name) # The name of this application
        @description = params.fetch(:description) # Brief summary of this application shown as a subtitle
        @appType = params.fetch(:appType) # Tag for what type of app this is
        @ownerId = params.fetch(:ownerId) # The ID of the owner
        @projectUrl = params.fetch(:projectUrl) # The URL to visit for more information about this application
        @iconUrl = params.fetch(:iconUrl) # The URL for the icon for this application
        @priceTerms = params.fetch(:priceTerms) # The description of the price for this application
        @createdUserId = params.fetch(:createdUserId) # The ID of the user who created this application
        @modifiedUserId = params.fetch.(:modifiedUserId) # The ID of the user who last modified this application
        @created = params.fetch(:created) # The date this application was created
        @modified = params.fetch(:modified) # The date this application was last modified
        @isActive = params.fetch(:isActive) # Flag indicating if the application is active.
        @wikiURL = params.fetch(:wikiURL) # URL to the Wiki for the Application
        @groupKey = params.fetch(:groupKey) # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        @notes = params.fetch(:notes) # All notes attached to this app. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        @attachments = params.fetch(:attachments) # All attachments attached to this app. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        @customFieldDefinitions = params.fetch(:customFieldDefinitions) # All definitions attached to the application. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        @customFieldValues = params.fetch(:customFieldValues) # All values attached to the application. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.

    end 
end