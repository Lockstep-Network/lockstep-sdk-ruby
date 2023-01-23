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
    # Represents a summary of outstanding amounts for bills to vendors and their associated daily payable outstanding value.
    class DpoSummaryModel

        ##
        # Initialize the DpoSummaryModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @vendor_id = params.dig(:vendor_id)
            @vendor_name = params.dig(:vendor_name)
            @primary_contact = params.dig(:primary_contact)
            @bills = params.dig(:bills)
            @base_currency_code = params.dig(:base_currency_code)
            @amount_outstanding = params.dig(:amount_outstanding)
            @dpo = params.dig(:dpo)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The unique ID of the vendor.
        attr_accessor :vendor_id

        ##
        # @return [String] The name of the vendor.
        attr_accessor :vendor_name

        ##
        # @return [String] The name of the primary contact.
        attr_accessor :primary_contact

        ##
        # @return [Int32] The total number of outstanding bills.
        attr_accessor :bills

        ##
        # @return [String] The group's base currency code.
        attr_accessor :base_currency_code

        ##
        # @return [Double] The total amount outstanding at the group's base currency.
        attr_accessor :amount_outstanding

        ##
        # @return [Double] The days payable outstanding value.
        attr_accessor :dpo

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'vendorId' => @vendor_id,
                'vendorName' => @vendor_name,
                'primaryContact' => @primary_contact,
                'bills' => @bills,
                'baseCurrencyCode' => @base_currency_code,
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
