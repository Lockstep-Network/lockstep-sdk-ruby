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
    # The totals for an Invoice Summary
    class InvoiceSummaryTotalsModel

        ##
        # Initialize the InvoiceSummaryTotalsModel using the provided prototype
        def initialize(params = {})
            @total_invoice_amount = params.dig(:total_invoice_amount)
            @total_invoice_balance = params.dig(:total_invoice_balance)
        end

        ##
        # @return [Double] The total amount invoiced.
        attr_accessor :total_invoice_amount

        ##
        # @return [Double] The total outstanding balance
        attr_accessor :total_invoice_balance

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'totalInvoiceAmount' => @total_invoice_amount,
                'totalInvoiceBalance' => @total_invoice_balance,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
