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
    # Contains data about the current user.
    class UserDataResponseModel

        ##
        # Initialize the UserDataResponseModel using the provided prototype
        def initialize(params = {})
            @data = params.dig(:data)
            @user_id = params.dig(:user_id)
        end

        ##
        # @return [Object] Data about the user, the properties returned will depend on the requested information.
        attr_accessor :data

        ##
        # @return [Uuid] The Lockstep Platform ID of the user
        attr_accessor :user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'data' => @data,
                'userId' => @user_id,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
