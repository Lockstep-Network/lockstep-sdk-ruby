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
    # Represents transaction summary information based on the query request within the group account.
    class TransactionSummaryTotalModel

        ##
        # Initialize the TransactionSummaryTotalModel using the provided prototype
        def initialize(params = {})
            @total_count = params.dig(:total_count)
            @total_amount = params.dig(:total_amount)
            @outstanding_amount = params.dig(:outstanding_amount)
            @invoice_open_count = params.dig(:invoice_open_count)
            @invoice_past_due_count = params.dig(:invoice_past_due_count)
        end

        ##
        # @return [Int32] Total count of all transactions from the query request.
        attr_accessor :total_count

        ##
        # @return [Double] Total value of all transactions from the query request.
        attr_accessor :total_amount

        ##
        # @return [Double] Total outstanding amount value of all transactions from the query request.
        attr_accessor :outstanding_amount

        ##
        # @return [Int32] Total open invoice count from the query request.
        attr_accessor :invoice_open_count

        ##
        # @return [Int32] Total past due invoice count from the query request.
        attr_accessor :invoice_past_due_count

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'totalCount' => @total_count,
                'totalAmount' => @total_amount,
                'outstandingAmount' => @outstanding_amount,
                'invoiceOpenCount' => @invoice_open_count,
                'invoicePastDueCount' => @invoice_past_due_count,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
