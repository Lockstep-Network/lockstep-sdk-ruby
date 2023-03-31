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
    # Represents the request to the SAGE GMS API
    class EmailReplyGeneratorRequest

        ##
        # Initialize the EmailReplyGeneratorRequest using the provided prototype
        def initialize(params = {})
            @date = params.dig(:date)
            @body = params.dig(:body)
            @subject = params.dig(:subject)
        end

        ##
        # @return [Date-time] The date associated with the email
        attr_accessor :date

        ##
        # @return [String] The body associated with the email
        attr_accessor :body

        ##
        # @return [String] The subject associated with the email
        attr_accessor :subject

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'date' => @date,
                'body' => @body,
                'subject' => @subject,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
