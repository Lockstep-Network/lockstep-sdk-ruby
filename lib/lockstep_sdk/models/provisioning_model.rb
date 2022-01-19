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

    # Represents the data sent during the onboarding flow
    class ProvisioningModel

        # Initialize the ProvisioningModel using the provided prototype
        def initialize(params = {})
            @full_name = params.fetch(:full_name)
            @time_zone = params.fetch(:time_zone)
            @default_currency = params.fetch(:default_currency)
            @erp = params.fetch(:erp)
            @company = params.fetch(:company)
        end

        # @return [String] The full name of the new user
        attr_accessor :full_name
        # @return [String] The time zone of the new user
        attr_accessor :time_zone
        # @return [String] The default currency of the new user
        attr_accessor :default_currency
        # @return [ErpInfoModel] The information necessary to enroll the user in their ERP
        attr_accessor :erp
        # @return [CompanyModel] The company information for the new user and group
        attr_accessor :company
    end
end
