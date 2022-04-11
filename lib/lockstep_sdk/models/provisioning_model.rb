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
    # Represents the data sent during the onboarding flow
    class ProvisioningModel

        ##
        # Initialize the ProvisioningModel using the provided prototype
        def initialize(params = {})
            @full_name = params.dig(:full_name)
            @erp = params.dig(:erp)
        end

        ##
        # @return [String] The full name of the new user
        attr_accessor :full_name

        ##
        # @return [ErpInfoModel] The information necessary to enroll the user in their ERP
        attr_accessor :erp

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'fullName' => @full_name,
                'erp' => @erp,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
