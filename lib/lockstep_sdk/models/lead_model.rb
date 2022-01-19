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
    class LeadModel

        # Initialize the LeadModel using the provided prototype
        def initialize(params = {})
            @lead_id = params.fetch(:lead_id)
            @name = params.fetch(:name)
            @company = params.fetch(:company)
            @email = params.fetch(:email)
            @erp_system = params.fetch(:erp_system)
        end

        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :lead_id
        # @return [String] Name of lead
        attr_accessor :name
        # @return [String] Name of company of lead
        attr_accessor :company
        # @return [String] Email of lead
        attr_accessor :email
        # @return [String] Requested ERP of lead
        attr_accessor :erp_system
    end
end
