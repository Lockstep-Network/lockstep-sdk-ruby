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

    # Model to invite a new user to your accounting group
    class InviteSubmitModel

        # Initialize the InviteSubmitModel using the provided prototype
        def initialize(params = {})
            @email = params.dig(:email)
        end

        # @return [Email] The email address of the user to invite
        attr_accessor :email

        def as_json(options={})
            {
                'email' => @email,
            }
        end

        def to_json(*options)
            [#{as_json(*options).to_json(*options)}]
        end
    end
end
