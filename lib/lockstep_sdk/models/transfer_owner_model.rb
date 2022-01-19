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

    # Model from the transfer ownership process.
    class TransferOwnerModel

        # Initialize the TransferOwnerModel using the provided prototype
        def initialize(params = {})
            @previous_owner = params.fetch(:previous_owner)
            @new_owner = params.fetch(:new_owner)
        end

        # @return [UserAccountModel] The previous owner of the account.
        attr_accessor :previous_owner
        # @return [UserAccountModel] The new owner of the account.
        attr_accessor :new_owner
    end
end
