#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2023 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2023 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # Represents a transcription validation request item to be validated.
    class TranscriptionValidationRequestItemModel

        ##
        # Initialize the TranscriptionValidationRequestItemModel using the provided prototype
        def initialize(params = {})
            @transcription_validation_request_item_id = params.dig(:transcription_validation_request_item_id)
            @transcription_validation_request_id = params.dig(:transcription_validation_request_id)
            @group_key = params.dig(:group_key)
            @file_hash = params.dig(:file_hash)
            @file_name = params.dig(:file_name)
            @file_ext = params.dig(:file_ext)
            @file_location = params.dig(:file_location)
            @transcription_result = params.dig(:transcription_result)
            @process_start = params.dig(:process_start)
            @process_end = params.dig(:process_end)
            @retry_count = params.dig(:retry_count)
            @feedback_result = params.dig(:feedback_result)
            @feedback_sent = params.dig(:feedback_sent)
            @status_code = params.dig(:status_code)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
        end

        ##
        # @return [Uuid] The unique identifier of the transcription validation request item.
        attr_accessor :transcription_validation_request_item_id

        ##
        # @return [Uuid] The ID number of the transcription validation request this item belongs to.
        attr_accessor :transcription_validation_request_id

        ##
        # @return [Uuid] Group account transcription validation request item is associated with.
        attr_accessor :group_key

        ##
        # @return [String] Generated hash of the file being validated.
        attr_accessor :file_hash

        ##
        # @return [String] Original name of the file on disk, without its extension.
        attr_accessor :file_name

        ##
        # @return [String] Original extension name of the file on disk.
        attr_accessor :file_ext

        ##
        # @return [String] Location of file in blob storage to be validated.
        attr_accessor :file_location

        ##
        # @return [String] Transcription result
        attr_accessor :transcription_result

        ##
        # @return [Date-time] Transcription process start date
        attr_accessor :process_start

        ##
        # @return [Date-time] Transcription process end date
        attr_accessor :process_end

        ##
        # @return [Int32] Amount of times item was processed to retrieve the transcription data
        attr_accessor :retry_count

        ##
        # @return [String] Feedback result specified by the client when the transcription result is not correct. This feedback result will be sent back to the transcription services to retrain and improve models over time.
        attr_accessor :feedback_result

        ##
        # @return [Date-time] Date when feedback result was sent back to transcription service.
        attr_accessor :feedback_sent

        ##
        # @return [String] A code identifying the status of this transcription validation request item. Recognized Transcription Validation Request status codes are: * `New` - Represents a transcription validation request item that is considered new and needs work to complete * `In Progress` - Represents a transcription validation request item that is currently being worked on * `Failed` - Represents a transcription validation request item that could not complete the validation process * `Complete` - Represents a transcription validation request item that is considered complete and does not need any further work
        attr_accessor :status_code

        ##
        # @return [Date-time] The date on which this transcription validation request item was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID number of the user who created this transcription validation request item.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date on which this transcription validation request item was last modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The ID number of the user who most recently modified this transcription validation request item.
        attr_accessor :modified_user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'transcriptionValidationRequestItemId' => @transcription_validation_request_item_id,
                'transcriptionValidationRequestId' => @transcription_validation_request_id,
                'groupKey' => @group_key,
                'fileHash' => @file_hash,
                'fileName' => @file_name,
                'fileExt' => @file_ext,
                'fileLocation' => @file_location,
                'transcriptionResult' => @transcription_result,
                'processStart' => @process_start,
                'processEnd' => @process_end,
                'retryCount' => @retry_count,
                'feedbackResult' => @feedback_result,
                'feedbackSent' => @feedback_sent,
                'statusCode' => @status_code,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
