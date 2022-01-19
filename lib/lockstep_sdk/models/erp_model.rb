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

    # Represents unsupported ERP systems
    class erpModel
        # @return [uuid] Unique ID for this ERP
        attr_accessor :erp_system_id
        # @return [string] Name of ERP
        attr_accessor :name
        # @return [boolean] Flag to indicate if ERP is supported
        attr_accessor :is_supported
    end
end
