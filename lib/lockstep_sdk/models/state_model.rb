#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # State model for ISO-3166-2
    class StateModel

        ##
        # Initialize the StateModel using the provided prototype
        def initialize(params = {})
            @name = params.dig(:name)
            @alpha2 = params.dig(:alpha2)
            @aliases = params.dig(:aliases)
        end

        ##
        # @return [String] Name of the state
        attr_accessor :name

        ##
        # @return [String] 2 letter alphabetic code for the given state
        attr_accessor :alpha2

        ##
        # @return [String] A different name for a state
        attr_accessor :aliases

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'name' => @name,
                'alpha2' => @alpha2,
                'aliases' => @aliases,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
