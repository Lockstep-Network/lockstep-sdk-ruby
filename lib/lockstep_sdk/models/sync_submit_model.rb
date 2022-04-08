#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # A SyncSubmitModel represents a task that loads data from a connector to load into the Lockstep Platform.  Data
    # contained in a sync will be merged with your existing data.  Each record will be matched with existing data
    # inside the Lockstep Platform using the [Identity Column](https://developer.lockstep.io/docs/identity-columns)
    # rules.  Any record that represents a new AppEnrollmentId+ErpKey will be inserted.  A record that matches an
    # existing AppEnrollmentId+ErpKey will be updated, but only if the data has changed.
    #
    # A Sync process permits either a complete data file or a partial / delta data file.  Lockstep recommends
    # using a sliding time window to avoid the risk of clock skew errors that might accidentally omit records.
    # Best practice is to run a Sync process daily, and to export all data that has changed in the past 48 hours.
    class SyncSubmitModel

        ##
        # Initialize the SyncSubmitModel using the provided prototype
        def initialize(params = {})
            @app_enrollment_id = params.dig(:app_enrollment_id)
        end

        ##
        # @return [Uuid] The unique identifier of the app enrollment that is creating this sync request.
        attr_accessor :app_enrollment_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'appEnrollmentId' => @app_enrollment_id,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
