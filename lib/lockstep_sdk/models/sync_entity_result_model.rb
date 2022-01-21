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

    # Contains information about a sync process for an entity.
    class SyncEntityResultModel

        # Initialize the SyncEntityResultModel using the provided prototype
        def initialize(params = {})
            @insert_count = params.dig(:insert_count)
            @update_count = params.dig(:update_count)
            @skip_count = params.dig(:skip_count)
            @error_count = params.dig(:error_count)
            @errors = params.dig(:errors)
        end

        # @return [Int32] The number of entities inserted
        attr_accessor :insert_count
        # @return [Int32] The number of entities updated
        attr_accessor :update_count
        # @return [Int32] The number of entities skipped
        attr_accessor :skip_count
        # @return [Int32] The number of errors encountered during sync
        attr_accessor :error_count
        # @return [Object] The errors encountered during sync keyed by ERP key
        attr_accessor :errors

        def as_json(options={})
            {
                'insertCount' => @insert_count,
                'updateCount' => @update_count,
                'skipCount' => @skip_count,
                'errorCount' => @error_count,
                'errors' => @errors,
            }
        end

        def to_json(*options)
            as_json(*options).to_json(*options)
        end
    end
end
