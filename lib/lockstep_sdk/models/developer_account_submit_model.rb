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

    # Model containing information to create a new developer account.
    class developerAccountSubmitModel
        # @return [string] The name of the developer.
        attr_accessor :name
        # @return [email] The email address of the developer.
        attr_accessor :email
        # @return [string] The company name of the developer.
        attr_accessor :company_name
    end
end
