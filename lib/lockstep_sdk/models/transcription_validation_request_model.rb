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
    # Represents a transcription validation request that is used to validate if file is of a specific type.
    class TranscriptionValidationRequestModel

        ##
        # Initialize the TranscriptionValidationRequestModel using the provided prototype
        def initialize(params = {})
            @transcription_validation_request_id = params.dig(:transcription_validation_request_id)
            @group_key = params.dig(:group_key)
            @status_code = params.dig(:status_code)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @items = params.dig(:items)
        end

        ##
        # @return [Uuid] The unique identifier of the transcription validation request.
        attr_accessor :transcription_validation_request_id

        ##
        # @return [Uuid] Group account transcription validation request is associated with.
        attr_accessor :group_key

        ##
        # @return [String] A code identifying the status of this transcription validation request. Recognized Transcription Validation Request status codes are: * `New` - Represents a transcription validation request that is considered new and needs work to complete * `In Progress` - Represents a transcription validation request that is currently being worked on * `Failed` - Represents a transcription validation request that could not complete the validation process * `Complete` - Represents a transcription validation request that is considered complete and does not need any further work
        attr_accessor :status_code

        ##
        # @return [Date-time] The date on which this transcription validation request was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID number of the user who created this transcription validation request.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date on which this transcription validation request was last modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The ID number of the user who most recently modified this transcription validation request.
        attr_accessor :modified_user_id

        ##
        # @return [TranscriptionValidationRequestItemModel] All items attached to this transcription validation request. To retrieve this collection, specify `Items` in the "Include" parameter for your query.
        attr_accessor :items

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'transcriptionValidationRequestId' => @transcription_validation_request_id,
                'groupKey' => @group_key,
                'statusCode' => @status_code,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'items' => @items,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
