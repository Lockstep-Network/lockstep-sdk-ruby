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
    # Model from the transfer ownership process.
    class TransferOwnerModel

        ##
        # Initialize the TransferOwnerModel using the provided prototype
        def initialize(params = {})
            @previous_owner = params.dig(:previous_owner)
            @new_owner = params.dig(:new_owner)
        end

        ##
        # @return [UserAccountModel] The previous owner of the account.
        attr_accessor :previous_owner

        ##
        # @return [UserAccountModel] The new owner of the account.
        attr_accessor :new_owner

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'previousOwner' => @previous_owner,
                'newOwner' => @new_owner,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
