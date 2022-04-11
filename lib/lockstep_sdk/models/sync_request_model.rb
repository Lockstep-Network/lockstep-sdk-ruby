#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # Represents a Sync action that loads data from a connector into the Lockstep Platform.  Users can
    # request Sync actions manually using Lockstep Inbox, or via the [Create Sync API](https://developer.lockstep.io/reference/post_api-v1-sync).
    # Each Sync action is tied to an [AppEnrollment](https://developer.lockstep.io/docs/applications-and-enrollments).
    # When the Sync action is complete, the field `StatusCode` will be set to either `Success` or `Failed`.
    #
    # You can fetch a list of detailed results for the Sync API by calling Retrieve or Query with an `include`
    # parameter of `details`.  These detailed results contain line-by-line errors that were detected during
    # processing of this sync.
    class SyncRequestModel

        ##
        # Initialize the SyncRequestModel using the provided prototype
        def initialize(params = {})
            @sync_request_id = params.dig(:sync_request_id)
            @group_key = params.dig(:group_key)
            @status_code = params.dig(:status_code)
            @process_result_message = params.dig(:process_result_message)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @created = params.dig(:created)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @details = params.dig(:details)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :sync_request_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The status of processing for this SyncRequest. When a SyncRequest is created, it is flagged as `Ready`. When it is picked up for execution, its status moves to `In Progress`. When it is complete, its status will move to `Success` or `Failed`. If another API call cancels the SyncRequest, its status will move to `Cancelled`. * Ready * In Progress * Cancelled * Failed * Success
        attr_accessor :status_code

        ##
        # @return [String] Message containing information about the sync request results
        attr_accessor :process_result_message

        ##
        # @return [Uuid] The AppEnrollmentId of the AppEnrollment object that executed this sync request
        attr_accessor :app_enrollment_id

        ##
        # @return [Date-time] The date this sync request was created
        attr_accessor :created

        ##
        # @return [Date-time] The date this sync request was last modified
        attr_accessor :modified

        ##
        # @return [Uuid] The ID number of the user who most recently modified this sync request.
        attr_accessor :modified_user_id

        ##
        # @return [Object] The detailed list of results and errors that occurred during the processing of this SyncRequest. This information is available only after the SyncRequest has completed. You will only be able to fetch this field if the SyncRequest's `StatusCode` field is set to `Cancelled`, `Success`, or `Failed`. To retrieve this collection, add the keyword `details` to the `include` parameter on your Retrieve or Query requests.
        attr_accessor :details

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'syncRequestId' => @sync_request_id,
                'groupKey' => @group_key,
                'statusCode' => @status_code,
                'processResultMessage' => @process_result_message,
                'appEnrollmentId' => @app_enrollment_id,
                'created' => @created,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'details' => @details,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
