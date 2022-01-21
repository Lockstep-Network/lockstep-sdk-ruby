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
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    # Represents a user request to sync data
    class SyncRequestModel

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

        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :sync_request_id
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [String] Potential values = Cancelled, Ready, In Progress, Success, Failed
        attr_accessor :status_code
        # @return [String] Message containing information about the sync request results
        attr_accessor :process_result_message
        # @return [Uuid] App enrollment sync request is for
        attr_accessor :app_enrollment_id
        # @return [Date-time] The date this sync request was created
        attr_accessor :created
        # @return [Date-time] The date this sync request was last modified
        attr_accessor :modified
        # @return [Uuid] The ID number of the user who most recently modified this sync request.
        attr_accessor :modified_user_id
        # @return [Object] The detailed results from the sync. To retrieve this collection, set `includeDetails` to true in your GET requests.
        attr_accessor :details

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

        def to_json(*options)
            [#{as_json(*options).to_json(*options)}]
        end
    end
end
