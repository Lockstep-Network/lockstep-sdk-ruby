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
    # A BatchSyncModel contains a collection of records to load into the Lockstep Platform.  Data contained
    # in this batch will be merged with your existing data.  Each record will be matched with existing data inside
    # the Lockstep Platform using the [Identity Column](https://developer.lockstep.io/docs/identity-columns) rules.
    # Any record that represents a new AppEnrollmentId+ErpKey will be inserted.  A record that matches an existing
    # AppEnrollmentId+ErpKey will be updated, but only if the data has changed.
    #
    # A Sync process permits either a complete data file or a partial / delta data file.  Lockstep recommends
    # using a sliding time window to avoid the risk of clock skew errors that might accidentally omit records.
    # Best practice is to run a Sync process daily, and to export all data that has changed in the past 48 hours.
    class BatchSyncModel

        ##
        # Initialize the BatchSyncModel using the provided prototype
        def initialize(params = {})
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @is_full_sync = params.dig(:is_full_sync)
            @companies = params.dig(:companies)
            @contacts = params.dig(:contacts)
            @credit_memo_applications = params.dig(:credit_memo_applications)
            @invoices = params.dig(:invoices)
            @invoice_lines = params.dig(:invoice_lines)
            @custom_fields = params.dig(:custom_fields)
            @payments = params.dig(:payments)
            @payment_applications = params.dig(:payment_applications)
            @financial_year_settings = params.dig(:financial_year_settings)
            @financial_accounts = params.dig(:financial_accounts)
            @financial_account_balance_histories = params.dig(:financial_account_balance_histories)
            @base_currencies = params.dig(:base_currencies)
        end

        ##
        # @return [Uuid] The optional existing app enrollment to associate with the data in this batch.
        attr_accessor :app_enrollment_id

        ##
        # @return [Boolean] True if this is a full sync, false if this is a partial sync. Defaults to false.
        attr_accessor :is_full_sync

        ##
        # @return [CompanySyncModel] A list of Company records to merge with your Lockstep Platform data
        attr_accessor :companies

        ##
        # @return [ContactSyncModel] A list of Contact records to merge with your Lockstep Platform data
        attr_accessor :contacts

        ##
        # @return [CreditMemoAppliedSyncModel] A list of CreditMemoApplied records to merge with your Lockstep Platform data
        attr_accessor :credit_memo_applications

        ##
        # @return [InvoiceSyncModel] A list of Invoice records to merge with your Lockstep Platform data
        attr_accessor :invoices

        ##
        # @return [InvoiceLineSyncModel] A list of InvoiceLine records to merge with your Lockstep Platform data
        attr_accessor :invoice_lines

        ##
        # @return [CustomFieldSyncModel] A list of CustomField records to merge with your Lockstep Platform data
        attr_accessor :custom_fields

        ##
        # @return [PaymentSyncModel] A list of Payment records to merge with your Lockstep Platform data
        attr_accessor :payments

        ##
        # @return [PaymentAppliedSyncModel] A list of PaymentApplied records to merge with your Lockstep Platform data
        attr_accessor :payment_applications

        ##
        # @return [FinancialYearSettingSyncModel] A list of FinancialYearSetting records to merge with your Lockstep Platform data
        attr_accessor :financial_year_settings

        ##
        # @return [FinancialAccountSyncModel] A list of FinancialAccount records to merge with your Lockstep Platform data
        attr_accessor :financial_accounts

        ##
        # @return [FinancialAccountBalanceHistorySyncModel] A list of FinancialAccountBalanceHistory records to merge with your Lockstep Platform data
        attr_accessor :financial_account_balance_histories

        ##
        # @return [BaseCurrencySyncModel] A list of BaseCurrency records to merge with your Lockstep Platform data
        attr_accessor :base_currencies

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'appEnrollmentId' => @app_enrollment_id,
                'isFullSync' => @is_full_sync,
                'companies' => @companies,
                'contacts' => @contacts,
                'creditMemoApplications' => @credit_memo_applications,
                'invoices' => @invoices,
                'invoiceLines' => @invoice_lines,
                'customFields' => @custom_fields,
                'payments' => @payments,
                'paymentApplications' => @payment_applications,
                'financialYearSettings' => @financial_year_settings,
                'financialAccounts' => @financial_accounts,
                'financialAccountBalanceHistories' => @financial_account_balance_histories,
                'baseCurrencies' => @base_currencies,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
