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
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # An AppEnrollment represents an app that has been enrolled to the current account.  When you sign up for an
    # app using the Lockstep Platform, you obtain an enrollment record for that app.  Example types of apps include
    # connectors and feature enhancement apps. The App Enrollment object contains information about this app, its
    # configuration, and settings.
    #
    # See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
    class AppEnrollmentModel

        ##
        # Initialize the AppEnrollmentModel using the provided prototype
        def initialize(params = {})
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @app_id = params.dig(:app_id)
            @group_key = params.dig(:group_key)
            @is_active = params.dig(:is_active)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @cron_settings = params.dig(:cron_settings)
            @sync_schedule_is_active = params.dig(:sync_schedule_is_active)
            @app = params.dig(:app)
            @custom_field_definitions = params.dig(:custom_field_definitions)
            @custom_field_values = params.dig(:custom_field_values)
            @last_sync = params.dig(:last_sync)
            @last_successful_sync = params.dig(:last_successful_sync)
            @connector_info = params.dig(:connector_info)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :app_enrollment_id

        ##
        # @return [Uuid] The ID number of the Application that this enrollment represents. You can fetch information about this Application object by specifying `App` in the "Include" parameter for your request.
        attr_accessor :app_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Boolean] Determines whether the app enrollment is in use
        attr_accessor :is_active

        ##
        # @return [Date-time] Created date
        attr_accessor :created

        ##
        # @return [Uuid] Created user ID
        attr_accessor :created_user_id

        ##
        # @return [Date-time] Last modified date
        attr_accessor :modified

        ##
        # @return [Uuid] Last user ID to modify
        attr_accessor :modified_user_id

        ##
        # @return [String] Stores schedule information for the application enrollment see https://en.wikipedia.org/wiki/Cron
        attr_accessor :cron_settings

        ##
        # @return [Boolean] Flag indicating if the Sync process should be ran on the specified schedule
        attr_accessor :sync_schedule_is_active

        ##
        # @return [ApplicationModel] The Application to which this AppEnrollment belongs. Contains general name, description, logo, and other metadata about this application. To retrieve this object, specify `App` in the "Include" parameter for your query.
        attr_accessor :app

        ##
        # @return [CustomFieldDefinitionModel] A collection of custom fields linked to this record. To retrieve this collection, specify `CustomFieldDefinitions` in the `include` parameter when retrieving data. To create a custom field, use the [Create Custom Field](https://developer.lockstep.io/reference/post_api-v1-customfieldvalues) endpoint with the `TableKey` to `AppEnrollment` and the `ObjectKey` set to the `AppEnrollmentId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :custom_field_definitions

        ##
        # @return [CustomFieldValueModel] A collection of custom fields linked to this record. To retrieve this collection, specify `CustomFieldValues` in the `include` parameter when retrieving data. To create a custom field, use the [Create Custom Field](https://developer.lockstep.io/reference/post_api-v1-customfieldvalues) endpoint with the `TableKey` to `AppEnrollment` and the `ObjectKey` set to the `AppEnrollmentId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :custom_field_values

        ##
        # @return [SyncRequestModel] Data about the last sync attached to this app enrollment To retrieve this collection, specify `LastSync` in the "Include" parameter for your query.
        attr_accessor :last_sync

        ##
        # @return [SyncRequestModel] Data about the last successful sync associated with this enrollment
        attr_accessor :last_successful_sync

        ##
        # @return [ConnectorInfoModel] Optional data necessary to create an app enrollment for a supported connector. Only enter relevant fields for the given connector.
        attr_accessor :connector_info

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'appEnrollmentId' => @app_enrollment_id,
                'appId' => @app_id,
                'groupKey' => @group_key,
                'isActive' => @is_active,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'cronSettings' => @cron_settings,
                'syncScheduleIsActive' => @sync_schedule_is_active,
                'app' => @app,
                'customFieldDefinitions' => @custom_field_definitions,
                'customFieldValues' => @custom_field_values,
                'lastSync' => @last_sync,
                'lastSuccessfulSync' => @last_successful_sync,
                'connectorInfo' => @connector_info,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
