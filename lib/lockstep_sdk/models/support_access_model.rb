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
    # Contains information for Lockstep to support/assist a user.
    class SupportAccessModel

        ##
        # Initialize the SupportAccessModel using the provided prototype
        def initialize(params = {})
            @code = params.dig(:code)
            @expires_at = params.dig(:expires_at)
        end

        ##
        # @return [String] The code required to assist the user.
        attr_accessor :code

        ##
        # @return [Date-time] The UTC date and time when the support access will expire.
        attr_accessor :expires_at

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'code' => @code,
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
