#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2023 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2023 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # Contains summary information for payables that will be due soon
    class PayablesComingDueHeaderModel

        ##
        # Initialize the PayablesComingDueHeaderModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @number_of_bills_due = params.dig(:number_of_bills_due)
            @number_of_vendors = params.dig(:number_of_vendors)
            @percentage_of_total = params.dig(:percentage_of_total)
            @base_currency_code = params.dig(:base_currency_code)
            @total_amount_due = params.dig(:total_amount_due)
            @due_date = params.dig(:due_date)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Int32] Number of bills due for this time period
        attr_accessor :number_of_bills_due

        ##
        # @return [Int32] Number of total vendors for this time period
        attr_accessor :number_of_vendors

        ##
        # @return [Double] Percentage of total for this time period
        attr_accessor :percentage_of_total

        ##
        # @return [String] The group's base currency code.
        attr_accessor :base_currency_code

        ##
        # @return [Double] Total amount due for this time period in the group's base currency.
        attr_accessor :total_amount_due

        ##
        # @return [Date-time] This model represents all the payables that are either already due or due within this date.
        attr_accessor :due_date

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'numberOfBillsDue' => @number_of_bills_due,
                'numberOfVendors' => @number_of_vendors,
                'percentageOfTotal' => @percentage_of_total,
                'baseCurrencyCode' => @base_currency_code,
                'totalAmountDue' => @total_amount_due,
                'dueDate' => @due_date,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
