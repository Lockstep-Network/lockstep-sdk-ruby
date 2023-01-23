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
    # Sets support access data for a user.
    class SupportAccessRequest

        ##
        # Initialize the SupportAccessRequest using the provided prototype
        def initialize(params = {})
            @expires_at = params.dig(:expires_at)
        end

        ##
        # @return [Date-time] The UTC date and time when support access should expire.
        attr_accessor :expires_at

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'expiresAt' => @expires_at,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
