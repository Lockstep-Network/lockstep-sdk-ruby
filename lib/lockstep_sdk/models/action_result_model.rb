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
    # Represents the result of an action.
    #
    # In the Lockstep API, an Action is returned when an API call does not produce any data
    # but does produce messages that can be useful in understanding what work was performed.
    # You may use the messages text to display user visible error messages or the results of
    # various operations.
    class ActionResultModel

        ##
        # Initialize the ActionResultModel using the provided prototype
        def initialize(params = {})
            @messages = params.dig(:messages)
        end

        ##
        # @return [String] If the API call produced messages, this element will contain a list of user-visible text strings that contain information about what work occurred in the API.
        attr_accessor :messages

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'messages' => @messages,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
