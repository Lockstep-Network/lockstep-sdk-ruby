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

    # Contains information about a sync process for an entity.
    class syncEntityResultModel
        # @return [int32] The number of entities inserted
        attr_accessor :insert_count
        # @return [int32] The number of entities updated
        attr_accessor :update_count
        # @return [int32] The number of entities skipped
        attr_accessor :skip_count
        # @return [int32] The number of errors encountered during sync
        attr_accessor :error_count
        # @return [object] The errors encountered during sync keyed by ERP key
        attr_accessor :errors
    end
end
