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
    # Aggregated Accounts Payable Aging information.
    class ApAgingHeaderInfoModel

        ##
        # Initialize the ApAgingHeaderInfoModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @report_bucket = params.dig(:report_bucket)
            @total_vendors = params.dig(:total_vendors)
            @total_bills_outstanding = params.dig(:total_bills_outstanding)
            @total_bills_outstanding_amount = params.dig(:total_bills_outstanding_amount)
            @total_credit_memo_outstanding_amount = params.dig(:total_credit_memo_outstanding_amount)
            @total_advance_payment_amount = params.dig(:total_advance_payment_amount)
            @total_outstanding_amount = params.dig(:total_outstanding_amount)
            @total_ap_amount = params.dig(:total_ap_amount)
            @percentage_of_total_ap = params.dig(:percentage_of_total_ap)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The aging bucket this data belongs to.
        attr_accessor :report_bucket

        ##
        # @return [Int32] The total number of vendors.
        attr_accessor :total_vendors

        ##
        # @return [Int32] The total number of bills outstanding.
        attr_accessor :total_bills_outstanding

        ##
        # @return [Double] The total amount outstanding on bills.
        attr_accessor :total_bills_outstanding_amount

        ##
        # @return [Double] The total amount outstanding on credit memos.
        attr_accessor :total_credit_memo_outstanding_amount

        ##
        # @return [Double] The total amount of advance payments.
        attr_accessor :total_advance_payment_amount

        ##
        # @return [Double] The total amount outstanding.
        attr_accessor :total_outstanding_amount

        ##
        # @return [Double] The total amount for AP.
        attr_accessor :total_ap_amount

        ##
        # @return [Double] Portion of Total AP this data represents.
        attr_accessor :percentage_of_total_ap

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'reportBucket' => @report_bucket,
                'totalVendors' => @total_vendors,
                'totalBillsOutstanding' => @total_bills_outstanding,
                'totalBillsOutstandingAmount' => @total_bills_outstanding_amount,
                'totalCreditMemoOutstandingAmount' => @total_credit_memo_outstanding_amount,
                'totalAdvancePaymentAmount' => @total_advance_payment_amount,
                'totalOutstandingAmount' => @total_outstanding_amount,
                'totalApAmount' => @total_ap_amount,
                'percentageOfTotalAp' => @percentage_of_total_ap,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
