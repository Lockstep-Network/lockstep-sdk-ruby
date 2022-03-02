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
    # Represents the Webhook Trigger History
    class WebhookHistoryTableStorageModel

        ##
        # Initialize the WebhookHistoryTableStorageModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @webhook_id = params.dig(:webhook_id)
            @webhook_history_id = params.dig(:webhook_history_id)
            @event_type = params.dig(:event_type)
            @request_sent = params.dig(:request_sent)
            @is_successful = params.dig(:is_successful)
            @response_status_code = params.dig(:response_status_code)
            @process_result_message = params.dig(:process_result_message)
            @failure_count = params.dig(:failure_count)
            @timestamp = params.dig(:timestamp)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The WebhookId uniquely identifies the webhook used to send notification that an event action has taken place.
        attr_accessor :webhook_id

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :webhook_history_id

        ##
        # @return [String] Event type which fired webhook [entity].[action]
        attr_accessor :event_type

        ##
        # @return [Boolean] Flag whether request was sent to callback url successfully or blocked by failing or because it was disabled.
        attr_accessor :request_sent

        ##
        # @return [Boolean] Flag whether webhook notification was successful overall (if webhook disabled should always return true otherwise depends on the response from the callback url)
        attr_accessor :is_successful

        ##
        # @return [String] Response status code that is returned when calling a callback url.
        attr_accessor :response_status_code

        ##
        # @return [String] Message containing information about the webhook callback results
        attr_accessor :process_result_message

        ##
        # @return [Int32] Number of times message failed to be sent over to callback url before succeeding or failing out. The maximum value should is based on webhook.
        attr_accessor :failure_count

        ##
        # @return [Date-time] Timestamp of when a request is sent to a webhook callback. Contains the last time message is sent if failures occur.
        attr_accessor :timestamp

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'webhookId' => @webhook_id,
                'webhookHistoryId' => @webhook_history_id,
                'eventType' => @event_type,
                'requestSent' => @request_sent,
                'isSuccessful' => @is_successful,
                'responseStatusCode' => @response_status_code,
                'processResultMessage' => @process_result_message,
                'failureCount' => @failure_count,
                'timestamp' => @timestamp,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
