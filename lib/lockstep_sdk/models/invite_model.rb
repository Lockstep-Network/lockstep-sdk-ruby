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
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    # Model from the User invite process
    class InviteModel

        # Initialize the InviteModel using the provided prototype
        def initialize(params = {})
            @email = params.dig(:email)
            @success = params.dig(:success)
            @invited_user = params.dig(:invited_user)
            @error_message = params.dig(:error_message)
        end

        # @return [String] The invited email address
        attr_accessor :email
        # @return [Boolean] True if the invite was sent successfully
        attr_accessor :success
        # @return [UserAccountModel] The invited user, may be null if the user could not be invited
        attr_accessor :invited_user
        # @return [String] The error message if the invite was not successful
        attr_accessor :error_message

        def as_json(options={})
            {
                'email' => @email,
                'success' => @success,
                'invitedUser' => @invited_user,
                'errorMessage' => @error_message,
            }
        end

        def to_json(*options)
            as_json(*options).to_json(*options)
        end
    end
end
