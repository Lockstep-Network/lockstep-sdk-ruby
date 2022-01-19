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

    # Model representing information for a sync request
    class SyncSubmitModel

        # Initialize the SyncSubmitModel using the provided prototype
        def initialize(params = {})
            @app_enrollment_id = params.fetch(:app_enrollment_id)
        end

        # @return [Uuid] The identifier of the app enrollment
        attr_accessor :app_enrollment_id
    end
end
