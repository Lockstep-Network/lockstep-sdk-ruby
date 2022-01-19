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
    class InviteModel

        # Initialize the InviteModel using the provided prototype
        def initialize(params = {})
            @email = params.fetch(:email)
            @success = params.fetch(:success)
            @invited_user = params.fetch(:invited_user)
            @error_message = params.fetch(:error_message)
        end

        # @return [String] The invited email address
        attr_accessor :email
        # @return [Boolean] True if the invite was sent successfully
        attr_accessor :success
        # @return [UserAccountModel] The invited user, may be null if the user could not be invited
        attr_accessor :invited_user
        # @return [String] The error message if the invite was not successful
        attr_accessor :error_message
    end
end
