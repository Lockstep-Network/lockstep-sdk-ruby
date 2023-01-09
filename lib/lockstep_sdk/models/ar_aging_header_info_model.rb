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
    # Aggregated Accounts Receivable Aging information.
    class ArAgingHeaderInfoModel

        ##
        # Initialize the ArAgingHeaderInfoModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @report_bucket = params.dig(:report_bucket)
            @total_customers = params.dig(:total_customers)
            @total_invoices_outstanding = params.dig(:total_invoices_outstanding)
            @total_invoice_outstanding_amount = params.dig(:total_invoice_outstanding_amount)
            @total_credit_memo_outstanding_amount = params.dig(:total_credit_memo_outstanding_amount)
            @total_unapplied_payment_amount = params.dig(:total_unapplied_payment_amount)
            @total_outstanding_amount = params.dig(:total_outstanding_amount)
            @total_ar_amount = params.dig(:total_ar_amount)
            @percentage_of_total_ar = params.dig(:percentage_of_total_ar)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The aging bucket this data belongs to.
        attr_accessor :report_bucket

        ##
        # @return [Int32] The total number of customers.
        attr_accessor :total_customers

        ##
        # @return [Int32] The total number of invoices outstanding.
        attr_accessor :total_invoices_outstanding

        ##
        # @return [Double] The total amount outstanding on invoices.
        attr_accessor :total_invoice_outstanding_amount

        ##
        # @return [Double] The total amount outstanding on credit memos.
        attr_accessor :total_credit_memo_outstanding_amount

        ##
        # @return [Double] The total amount of unapplied payments.
        attr_accessor :total_unapplied_payment_amount

        ##
        # @return [Double] The total amount outstanding.
        attr_accessor :total_outstanding_amount

        ##
        # @return [Double] The total amount for AR.
        attr_accessor :total_ar_amount

        ##
        # @return [Double] Portion of Total AR this data represents.
        attr_accessor :percentage_of_total_ar

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'reportBucket' => @report_bucket,
                'totalCustomers' => @total_customers,
                'totalInvoicesOutstanding' => @total_invoices_outstanding,
                'totalInvoiceOutstandingAmount' => @total_invoice_outstanding_amount,
                'totalCreditMemoOutstandingAmount' => @total_credit_memo_outstanding_amount,
                'totalUnappliedPaymentAmount' => @total_unapplied_payment_amount,
                'totalOutstandingAmount' => @total_outstanding_amount,
                'totalArAmount' => @total_ar_amount,
                'percentageOfTotalAr' => @percentage_of_total_ar,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
