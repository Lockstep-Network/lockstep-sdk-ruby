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
    # The JournalEntryLineSyncModel represents information coming into Lockstep from an external financial system or other
    # enterprise resource planning system.  To import data from an external system, convert your original data into
    # the JournalEntryLineSyncModel format and call the [Upload Sync File API](https://developer.lockstep.io/reference/post_api-v1-sync-zip).
    # This API retrieves all of the data you uploaded in a compressed ZIP file and imports it into the Lockstep
    # platform.
    #
    # Once imported, this record will be available in the Lockstep API as a JournalEntryLineModel
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class JournalEntryLineSyncModel

        ##
        # Initialize the JournalEntryLineSyncModel using the provided prototype
        def initialize(params = {})
            @on_match_action = params.dig(:on_match_action)
            @erp_key = params.dig(:erp_key)
            @journal_entry_erp_key = params.dig(:journal_entry_erp_key)
            @financial_account_erp_key = params.dig(:financial_account_erp_key)
            @account_number = params.dig(:account_number)
            @account_name = params.dig(:account_name)
            @debit = params.dig(:debit)
            @credit = params.dig(:credit)
            @currency_code = params.dig(:currency_code)
            @base_debit = params.dig(:base_debit)
            @base_credit = params.dig(:base_credit)
            @base_currency_code = params.dig(:base_currency_code)
            @source_created_user = params.dig(:source_created_user)
            @memo = params.dig(:memo)
            @dimensions = params.dig(:dimensions)
            @created = params.dig(:created)
            @modified = params.dig(:modified)
        end

        ##
        # @return [MatchAction] Indicates what action to take when an existing object has been found during the sync process.
        attr_accessor :on_match_action

        ##
        # @return [String] This is the primary key of the Journal Entry Line record. For this field, you should use whatever the Journal Entry Line's unique identifying number is in the originating system. Search for a unique, non-changing number within the originating financial system for this record. Example: If you store your Journal Entry Line records in a database, whatever the primary key for the Journal Entry Line table is in the database should be the "ErpKey". For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] The original primary key or unique ID of the journal entry to which this line belongs. This value should match the Journal Entry ErpKey field on the JournalEntrySyncModel.
        attr_accessor :journal_entry_erp_key

        ##
        # @return [String] An optional Financial Account with which this line is associated. This value should match the Financial Account ErpKey field on the FinancialAccountSyncModel.
        attr_accessor :financial_account_erp_key

        ##
        # @return [String] The unique code/identifier assigned to each account in the chart of accounts.
        attr_accessor :account_number

        ##
        # @return [String] The name of the account.
        attr_accessor :account_name

        ##
        # @return [Double] Debit to account.
        attr_accessor :debit

        ##
        # @return [Double] Credit to account.
        attr_accessor :credit

        ##
        # @return [String] The transaction currency in which the entry is recorded, especially useful for multi-currency environments.
        attr_accessor :currency_code

        ##
        # @return [Double] The base currency debit amount for the account.
        attr_accessor :base_debit

        ##
        # @return [Double] The base currency credit amount for the account.
        attr_accessor :base_credit

        ##
        # @return [String] The base currency in which the entry is recorded, especially useful for multi-currency environments.
        attr_accessor :base_currency_code

        ##
        # @return [String] The ERP’s identifier for the user who recorded the journal entry line.
        attr_accessor :source_created_user

        ##
        # @return [String] A memo related to this line.
        attr_accessor :memo

        ##
        # @return [Object] A JSON string representing the dimensions for this journal entry line.
        attr_accessor :dimensions

        ##
        # @return [Date-time] If known, the date when this record was created according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a created-date, leave this field null.
        attr_accessor :created

        ##
        # @return [Date-time] If known, the date when this record was most recently modified according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a most-recently-modified-date, leave this field null.
        attr_accessor :modified

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'onMatchAction' => @on_match_action,
                'erpKey' => @erp_key,
                'journalEntryErpKey' => @journal_entry_erp_key,
                'financialAccountErpKey' => @financial_account_erp_key,
                'accountNumber' => @account_number,
                'accountName' => @account_name,
                'debit' => @debit,
                'credit' => @credit,
                'currencyCode' => @currency_code,
                'baseDebit' => @base_debit,
                'baseCredit' => @base_credit,
                'baseCurrencyCode' => @base_currency_code,
                'sourceCreatedUser' => @source_created_user,
                'memo' => @memo,
                'dimensions' => @dimensions,
                'created' => @created,
                'modified' => @modified,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
