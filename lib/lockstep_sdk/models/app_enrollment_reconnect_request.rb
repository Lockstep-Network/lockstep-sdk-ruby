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
    # Information to reconnect an ERP.
    class AppEnrollmentReconnectRequest

        ##
        # Initialize the AppEnrollmentReconnectRequest using the provided prototype
        def initialize(params = {})
            @auth_code = params.dig(:auth_code)
        end

        ##
        # @return [String] The OAuth authentication code.
        attr_accessor :auth_code

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'authCode' => @auth_code,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
