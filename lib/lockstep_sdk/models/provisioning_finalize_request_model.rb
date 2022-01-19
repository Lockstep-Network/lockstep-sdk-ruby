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
    class provisioningFinalizeRequestModel
        # @return [string] The full name of the user
        attr_accessor :full_name
        # @return [string] The time zone of the user
        attr_accessor :time_zone
        # @return [string] The default currency of the user
        attr_accessor :default_currency
        # @return [companyModel] The company information for the user and group
        attr_accessor :company
        # @return [erpInfoModel] Optional connector information needed to enroll user to their email connector
        attr_accessor :email_connector
    end
end
