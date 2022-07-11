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
    # Represents the group totals for the values found in the daily payable outstanding summary
    class DpoSummaryGroupTotalModel

        ##
        # Initialize the DpoSummaryGroupTotalModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @vendors = params.dig(:vendors)
            @bills = params.dig(:bills)
            @amount_outstanding = params.dig(:amount_outstanding)
            @dpo = params.dig(:dpo)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Int32] The total number of vendors with outstanding bills
        attr_accessor :vendors

        ##
        # @return [Int32] The total number of bills outstanding
        attr_accessor :bills

        ##
        # @return [Double] The total amount outstanding
        attr_accessor :amount_outstanding

        ##
        # @return [Double] The total dpo for the group key
        attr_accessor :dpo

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'vendors' => @vendors,
                'bills' => @bills,
                'amountOutstanding' => @amount_outstanding,
                'dpo' => @dpo,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
