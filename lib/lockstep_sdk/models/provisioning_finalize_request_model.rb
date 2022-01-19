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

    # Represents the data to finalize onboarding for a user
    class ProvisioningFinalizeRequestModel

        # Initialize the ProvisioningFinalizeRequestModel using the provided prototype
        def initialize(params = {})
            @full_name = params.fetch(:full_name)
            @time_zone = params.fetch(:time_zone)
            @default_currency = params.fetch(:default_currency)
            @company = params.fetch(:company)
            @email_connector = params.fetch(:email_connector)
        end

        # @return [String] The full name of the user
        attr_accessor :full_name
        # @return [String] The time zone of the user
        attr_accessor :time_zone
        # @return [String] The default currency of the user
        attr_accessor :default_currency
        # @return [CompanyModel] The company information for the user and group
        attr_accessor :company
        # @return [ErpInfoModel] Optional connector information needed to enroll user to their email connector
        attr_accessor :email_connector
    end
end
