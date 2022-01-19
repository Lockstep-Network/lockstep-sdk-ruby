#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk

    # Model used to submit a transfer ownership request
    class TransferOwnerSubmitModel

        # Initialize the TransferOwnerSubmitModel using the provided prototype
        def initialize(params = {})
            @target_user_id = params.fetch(:target_user_id)
        end

        # @return [Uuid] The ID of the user to transfer ownership to.
        attr_accessor :target_user_id
    end
end
