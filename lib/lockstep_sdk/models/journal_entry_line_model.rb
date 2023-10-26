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
    # Contains information about a journal entry line
    class JournalEntryLineModel

        ##
        # Initialize the JournalEntryLineModel using the provided prototype
        def initialize(params = {})
            @journal_entry_line_id = params.dig(:journal_entry_line_id)
            @journal_entry_id = params.dig(:journal_entry_id)
            @group_key = params.dig(:group_key)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @erp_key = params.dig(:erp_key)
            @financial_account_id = params.dig(:financial_account_id)
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
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @source_modified_date = params.dig(:source_modified_date)
            @journal_entry = params.dig(:journal_entry)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :journal_entry_line_id

        ##
        # @return [Uuid] The Journal Entry with which this line is associated.
        attr_accessor :journal_entry_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The AppEnrollmentId of the application that imported this record. For accounts with more than one financial system connected, this field identifies the originating financial system that produced this record. This value is null if this record was not loaded from an external ERP or financial system.
        attr_accessor :app_enrollment_id

        ##
        # @return [String] The unique ID of this record as it was known in its originating financial system. If this journal entry record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [Uuid] The Financial Account with which this line is associated.
        attr_accessor :financial_account_id

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
        # @return [Object] Dimensions for this journal entry line.
        attr_accessor :dimensions

        ##
        # @return [Date-time] The date that the journal entry line was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID of the user who created the journal entry line.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date that the journal entry line was last modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The ID of the user who last modified the journal entry line.
        attr_accessor :modified_user_id

        ##
        # @return [Date-time] The date on which this record was last modified in source ERP.
        attr_accessor :source_modified_date

        ##
        # @return [JournalEntryModel] The journal entry for this journal entry line. To retrieve this item, specify `JournalEntry` in the "Include" parameter for your query.
        attr_accessor :journal_entry

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'journalEntryLineId' => @journal_entry_line_id,
                'journalEntryId' => @journal_entry_id,
                'groupKey' => @group_key,
                'appEnrollmentId' => @app_enrollment_id,
                'erpKey' => @erp_key,
                'financialAccountId' => @financial_account_id,
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
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'sourceModifiedDate' => @source_modified_date,
                'journalEntry' => @journal_entry,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
