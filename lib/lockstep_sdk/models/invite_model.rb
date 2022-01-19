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

    # Model from the User invite process
    class inviteModel
        # @return [string] The invited email address
        attr_accessor :email
        # @return [boolean] True if the invite was sent successfully
        attr_accessor :success
        # @return [userAccountModel] The invited user, may be null if the user could not be invited
        attr_accessor :invited_user
        # @return [string] The error message if the invite was not successful
        attr_accessor :error_message
    end
end
