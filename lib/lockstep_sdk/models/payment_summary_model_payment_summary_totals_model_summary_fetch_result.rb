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

    class PaymentSummaryModelPaymentSummaryTotalsModelSummaryFetchResult

        ##
        # Initialize the PaymentSummaryModelPaymentSummaryTotalsModelSummaryFetchResult using the provided prototype
        def initialize(params = {})
            @records = params.dig(:records)
            @total_count = params.dig(:total_count)
            @page_size = params.dig(:page_size)
            @page_number = params.dig(:page_number)
            @summary = params.dig(:summary)
            @aging_summary = params.dig(:aging_summary)
        end

        ##
        # @return [PaymentSummaryModel] 
        attr_accessor :records

        ##
        # @return [Int32] 
        attr_accessor :total_count

        ##
        # @return [Int32] 
        attr_accessor :page_size

        ##
        # @return [Int32] 
        attr_accessor :page_number

        ##
        # @return [PaymentSummaryTotalsModel] The totals for a Payment Summary
        attr_accessor :summary

        ##
        # @return [SummaryAgingTotalsModel] 
        attr_accessor :aging_summary

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'records' => @records,
                'totalCount' => @total_count,
                'pageSize' => @page_size,
                'pageNumber' => @page_number,
                'summary' => @summary,
                'agingSummary' => @aging_summary,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
