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
    # Represents the response from SAGE GMS API
    class EmailReplyGeneratorResponse

        ##
        # Initialize the EmailReplyGeneratorResponse using the provided prototype
        def initialize(params = {})
            @message_id = params.dig(:message_id)
            @suggestions = params.dig(:suggestions)
        end

        ##
        # @return [Uuid] The id for this request in the GMS system
        attr_accessor :message_id

        ##
        # @return [EmailReplyGeneratorSuggestions] A list of suggested email reply responses
        attr_accessor :suggestions

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'message_id' => @message_id,
                'suggestions' => @suggestions,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
