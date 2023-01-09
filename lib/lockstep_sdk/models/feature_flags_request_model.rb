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
    # Request information for Feature Flags
    class FeatureFlagsRequestModel

        ##
        # Initialize the FeatureFlagsRequestModel using the provided prototype
        def initialize(params = {})
            @names = params.dig(:names)
        end

        ##
        # @return [String] The names of Feature Flags
        attr_accessor :names

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'names' => @names,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
