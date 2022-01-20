#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayanan <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk

    # Model used to submit a transfer ownership request
    class TransferOwnerSubmitModel

        # Initialize the TransferOwnerSubmitModel using the provided prototype
        def initialize(params = {})
            @target_user_id = params.dig(:target_user_id)
        end

        # @return [Uuid] The ID of the user to transfer ownership to.
        attr_accessor :target_user_id
    end

    def as_json(options={})
        {
            'targetUserId' => @target_user_id,
        }
    end

    def to_json(*options)
        as_json(*options).to_json(*options)
    end
end
