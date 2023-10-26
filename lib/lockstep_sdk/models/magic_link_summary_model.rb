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
    # A historic summary of all magic links sent in a given group
    class MagicLinkSummaryModel

        ##
        # Initialize the MagicLinkSummaryModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @total_count = params.dig(:total_count)
            @total_bounced = params.dig(:total_bounced)
            @total_visited = params.dig(:total_visited)
        end

        ##
        # @return [Uuid] Group that the summary is for
        attr_accessor :group_key

        ##
        # @return [Int32] Total number of magic links sent
        attr_accessor :total_count

        ##
        # @return [Int32] Total number of magic links that failed to send
        attr_accessor :total_bounced

        ##
        # @return [Int32] Total number of visits across all magic links
        attr_accessor :total_visited

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'totalCount' => @total_count,
                'totalBounced' => @total_bounced,
                'totalVisited' => @total_visited,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
