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
    # Contains summary information for payables for the widget
    class PayablesComingDueWidgetModel

        ##
        # Initialize the PayablesComingDueWidgetModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @date = params.dig(:date)
            @base_currency_code = params.dig(:base_currency_code)
            @amount_due = params.dig(:amount_due)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Date-time] This model represents all the payables that are either already due or due within this date.
        attr_accessor :date

        ##
        # @return [String] The group's base currency code.
        attr_accessor :base_currency_code

        ##
        # @return [Double] Total amount due for this time period at the group's base currency.
        attr_accessor :amount_due

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'date' => @date,
                'baseCurrencyCode' => @base_currency_code,
                'amountDue' => @amount_due,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
