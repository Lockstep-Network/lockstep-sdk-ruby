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
    class provisioningModel
        # @return [string] The full name of the new user
        attr_accessor :full_name
        # @return [string] The time zone of the new user
        attr_accessor :time_zone
        # @return [string] The default currency of the new user
        attr_accessor :default_currency
        # @return [erpInfoModel] The information necessary to enroll the user in their ERP
        attr_accessor :erp
        # @return [companyModel] The company information for the new user and group
        attr_accessor :company
    end
end
