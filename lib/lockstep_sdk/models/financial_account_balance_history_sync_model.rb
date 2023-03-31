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
    # The FinancialAccountBalanceHistorySyncModel represents information coming into Lockstep from an external financial system or other
    # enterprise resource planning system.  To import data from an external system, convert your original data into
    # the FinancialAccountBalanceHistorySyncModel format and call the [Upload Sync File API](https://developer.lockstep.io/reference/post_api-v1-sync-zip).
    # This API retrieves all of the data you uploaded in a compressed ZIP file and imports it into the Lockstep
    # platform.
    #
    # If the FinancialAccountBalanceHistorySyncModels are imported via a connector instead, please ensure that all records are passed in
    # on every sync. Records that are not passed in will be assumed to be deleted.
    #
    # Once imported, this record will be available in the Lockstep API as a [FinancialAccountBalanceHistoryModel](https://developer.lockstep.io/docs/financialaccountbalancehistorymodel).
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class FinancialAccountBalanceHistorySyncModel

        ##
        # Initialize the FinancialAccountBalanceHistorySyncModel using the provided prototype
        def initialize(params = {})
            @financial_account_code = params.dig(:financial_account_code)
            @financial_account_erp_key = params.dig(:financial_account_erp_key)
            @financial_year = params.dig(:financial_year)
            @period_number = params.dig(:period_number)
            @period_start_date = params.dig(:period_start_date)
            @period_end_date = params.dig(:period_end_date)
            @status = params.dig(:status)
            @balance = params.dig(:balance)
            @balance_type = params.dig(:balance_type)
        end

        ##
        # @return [String] The code for the Financial Account. Can either be a general ledger or an account code.
        attr_accessor :financial_account_code

        ##
        # @return [String] This is the primary key of the FinancialAccount record. For this field, you should use whatever the company's unique identifying number is in the originating system. Search for a unique, non-changing number within the originating financial system for this record. Example: If you store your company records in a database, whatever the primary key for the company table is in the database should be the ErpKey. Example: If you use a financial system such as Quickbooks or Xero, look for the primary ID number of the company record within that financial system.
        attr_accessor :financial_account_erp_key

        ##
        # @return [Int32] The financial year that this period falls under
        attr_accessor :financial_year

        ##
        # @return [Int32] The period number (1-12 or 1-13) that this balance history is for
        attr_accessor :period_number

        ##
        # @return [Date-time] The start date of this period.
        attr_accessor :period_start_date

        ##
        # @return [Date-time] The end date of this period.
        attr_accessor :period_end_date

        ##
        # @return [String] The status of this period. The status should be Closed if the books for this period have been closed, if not the status should be Open. The status can also be Deleted if there was a recalculation that needed to occur, for example due to a change in financial year settings.
        attr_accessor :status

        ##
        # @return [Double] The current or end balance of this period.
        attr_accessor :balance

        ##
        # @return [FinancialAccountBalanceType] The balance type of this period. If left null, the balance type will be determined by the balance.
        attr_accessor :balance_type

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'financialAccountCode' => @financial_account_code,
                'financialAccountErpKey' => @financial_account_erp_key,
                'financialYear' => @financial_year,
                'periodNumber' => @period_number,
                'periodStartDate' => @period_start_date,
                'periodEndDate' => @period_end_date,
                'status' => @status,
                'balance' => @balance,
                'balanceType' => @balance_type,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
