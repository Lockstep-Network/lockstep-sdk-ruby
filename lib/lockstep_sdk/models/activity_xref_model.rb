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
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # Represents links between an Activity and another record.
    class ActivityXRefModel

        ##
        # Initialize the ActivityXRefModel using the provided prototype
        def initialize(params = {})
            @activity_xref_id = params.dig(:activity_xref_id)
            @activity_id = params.dig(:activity_id)
            @group_key = params.dig(:group_key)
            @table_key = params.dig(:table_key)
            @object_key = params.dig(:object_key)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this is added to the Lockstep platform.
        attr_accessor :activity_xref_id

        ##
        # @return [Uuid] The ID of the activity to which this reference belongs.
        attr_accessor :activity_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The name of the table the activity reference is associated with
        attr_accessor :table_key

        ##
        # @return [String] The ID of the object the activity reference is associated with
        attr_accessor :object_key

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'activityXRefId' => @activity_xref_id,
                'activityId' => @activity_id,
                'groupKey' => @group_key,
                'tableKey' => @table_key,
                'objectKey' => @object_key,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
