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
    # Represents leads for creating new ERP connectors
    class LeadModel

        ##
        # Initialize the LeadModel using the provided prototype
        def initialize(params = {})
            @lead_id = params.dig(:lead_id)
            @name = params.dig(:name)
            @company = params.dig(:company)
            @email = params.dig(:email)
            @erp_system = params.dig(:erp_system)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :lead_id

        ##
        # @return [String] Name of lead
        attr_accessor :name

        ##
        # @return [String] Name of company of lead
        attr_accessor :company

        ##
        # @return [String] Email of lead
        attr_accessor :email

        ##
        # @return [String] Requested ERP of lead
        attr_accessor :erp_system

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'leadId' => @lead_id,
                'name' => @name,
                'company' => @company,
                'email' => @email,
                'erpSystem' => @erp_system,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
