#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayan B S <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
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
            @time_zone = params.dig(:time_zone)
            @default_currency = params.dig(:default_currency)
            @erp = params.dig(:erp)
            @company = params.dig(:company)
        end

        ##
        # @return [String] The full name of the new user
        attr_accessor :full_name

        ##
        # @return [String] The time zone of the new user
        attr_accessor :time_zone

        ##
        # @return [String] The default currency of the new user
        attr_accessor :default_currency

        ##
        # @return [ErpInfoModel] The information necessary to enroll the user in their ERP
        attr_accessor :erp

        ##
        # @return [CompanyModel] The company information for the new user and group
        attr_accessor :company

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'fullName' => @full_name,
                'timeZone' => @time_zone,
                'defaultCurrency' => @default_currency,
                'erp' => @erp,
                'company' => @company,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
