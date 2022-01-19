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

    # Represents leads for creating new ERP connectors
    class leadModel
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :lead_id
        # @return [string] Name of lead
        attr_accessor :name
        # @return [string] Name of company of lead
        attr_accessor :company
        # @return [string] Email of lead
        attr_accessor :email
        # @return [string] Requested ERP of lead
        attr_accessor :erp_system
    end
end
