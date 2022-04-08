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
    # Represents the data to finalize onboarding for a user
    class ProvisioningFinalizeRequestModel

        ##
        # Initialize the ProvisioningFinalizeRequestModel using the provided prototype
        def initialize(params = {})
            @full_name = params.dig(:full_name)
            @time_zone = params.dig(:time_zone)
            @default_currency = params.dig(:default_currency)
            @company = params.dig(:company)
            @email_connector = params.dig(:email_connector)
        end

        ##
        # @return [String] The full name of the user
        attr_accessor :full_name

        ##
        # @return [String] The time zone of the user
        attr_accessor :time_zone

        ##
        # @return [String] The default currency of the user
        attr_accessor :default_currency

        ##
        # @return [CompanyModel] The company information for the user and group
        attr_accessor :company

        ##
        # @return [ErpInfoModel] Optional connector information needed to enroll user to their email connector
        attr_accessor :email_connector

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'fullName' => @full_name,
                'timeZone' => @time_zone,
                'defaultCurrency' => @default_currency,
                'company' => @company,
                'emailConnector' => @email_connector,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
