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
    # Model used to submit a transfer ownership request
    class TransferOwnerSubmitModel

        ##
        # Initialize the TransferOwnerSubmitModel using the provided prototype
        def initialize(params = {})
            @target_user_id = params.dig(:target_user_id)
        end

        ##
        # @return [Uuid] The ID of the user to transfer ownership to.
        attr_accessor :target_user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'targetUserId' => @target_user_id,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
