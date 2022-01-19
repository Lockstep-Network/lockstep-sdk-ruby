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

    # An AppEnrollment represents an app that has been enrolled to the current account.  When you sign up for an
    # app using the Lockstep Platform, you obtain an enrollment record for that app.  Example types of apps include
    # connectors and feature enhancement apps. The App Enrollment object contains information about this app, its
    # configuration, and settings.
    # 
    # See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
    class appEnrollmentModel
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :app_enrollment_id
        # @return [uuid] The ID number of the Application that this enrollment represents. You can fetch information about this Application object by specifying `App` in the "Include" parameter for your request.
        attr_accessor :app_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [boolean] Determines whether the app enrollment is in use
        attr_accessor :is_active
        # @return [date-time] Created date
        attr_accessor :created
        # @return [uuid] Created user ID
        attr_accessor :created_user_id
        # @return [date-time] Last modified date
        attr_accessor :modified
        # @return [uuid] Last user ID to modify
        attr_accessor :modified_user_id
        # @return [string] Stores schedule information for the application enrollment see https://en.wikipedia.org/wiki/Cron
        attr_accessor :cron_settings
        # @return [boolean] Flag indicating if the Sync process should be ran on the specified schedule
        attr_accessor :sync_schedule_is_active
        # @return [applicationModel] The Application to which this AppEnrollment belongs. Contains general name, description, logo, and other metadata about this application. To retrieve this object, specify `App` in the "Include" parameter for your query.
        attr_accessor :app
        # @return [customFieldDefinitionModel] All definitions attached to this app. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [customFieldValueModel] All values attached to this app. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
        # @return [syncRequestModel] Data about the last sync attached to this app enrollment To retrieve this collection, specify `LastSync` in the "Include" parameter for your query.
        attr_accessor :last_sync
        # @return [syncRequestModel] Data about the last successful sync associated with this enrollment
        attr_accessor :last_successful_sync
        # @return [erpInfoDataModel] Use `ConnectorInfo` instead.
        attr_accessor :erp_info
        # @return [connectorInfoModel] Optional data necessary to create an app enrollment for a supported connector. Only enter relevant fields for the given connector.
        attr_accessor :connector_info
    end
end
