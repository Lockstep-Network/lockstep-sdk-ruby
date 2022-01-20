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

    # Model from the transfer ownership process.
    class TransferOwnerModel

        # Initialize the TransferOwnerModel using the provided prototype
        def initialize(params = {})
            @previous_owner = params.dig(:previous_owner)
            @new_owner = params.dig(:new_owner)
        end

        # @return [UserAccountModel] The previous owner of the account.
        attr_accessor :previous_owner
        # @return [UserAccountModel] The new owner of the account.
        attr_accessor :new_owner
    end

    def as_json(options={})
        {
            'previousOwner' => @previous_owner,
            'newOwner' => @new_owner,
        }
    end

    def to_json(*options)
        as_json(*options).to_json(*options)
    end
end
