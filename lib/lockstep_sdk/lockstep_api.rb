#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2023 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
#             Manish Narayan B S <manish.n@lockstep.io>, Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2023 Lockstep, Inc.
# @version    2023.5.21
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#

require 'net/http'
require 'openssl'
require 'uri'
require 'socket'

project_root = File.dirname(File.absolute_path(__FILE__))
Dir.glob(project_root + '/clients/*') {|file| require file}

module lockstep_sdk
    class LockstepApi
    
        ##
        # @return [String] The version number of this API client
        attr_accessor :version

        ##
        # @return [String] The name or URL of the environment
        attr_accessor :env 

        ##
        # @return [ApiKeysClient] Client object for ApiKeys endpoints
        attr_accessor :api_keys

        ##
        # @return [AppEnrollmentsClient] Client object for AppEnrollments endpoints
        attr_accessor :app_enrollments

        ##
        # @return [ApplicationsClient] Client object for Applications endpoints
        attr_accessor :applications

        ##
        # @return [AttachmentLinksClient] Client object for AttachmentLinks endpoints
        attr_accessor :attachment_links

        ##
        # @return [AttachmentsClient] Client object for Attachments endpoints
        attr_accessor :attachments

        ##
        # @return [CodeDefinitionsClient] Client object for CodeDefinitions endpoints
        attr_accessor :code_definitions

        ##
        # @return [CompaniesClient] Client object for Companies endpoints
        attr_accessor :companies

        ##
        # @return [ContactsClient] Client object for Contacts endpoints
        attr_accessor :contacts

        ##
        # @return [CreditMemosAppliedClient] Client object for CreditMemosApplied endpoints
        attr_accessor :credit_memos_applied

        ##
        # @return [CurrenciesClient] Client object for Currencies endpoints
        attr_accessor :currencies

        ##
        # @return [CustomFieldDefinitionsClient] Client object for CustomFieldDefinitions endpoints
        attr_accessor :custom_field_definitions

        ##
        # @return [CustomFieldValuesClient] Client object for CustomFieldValues endpoints
        attr_accessor :custom_field_values

        ##
        # @return [DefinitionsClient] Client object for Definitions endpoints
        attr_accessor :definitions

        ##
        # @return [FeatureFlagsClient] Client object for FeatureFlags endpoints
        attr_accessor :feature_flags

        ##
        # @return [FinancialAccountClient] Client object for FinancialAccount endpoints
        attr_accessor :financial_account

        ##
        # @return [FinancialAccountBalanceHistoryClient] Client object for FinancialAccountBalanceHistory endpoints
        attr_accessor :financial_account_balance_history

        ##
        # @return [FinancialYearSettingsClient] Client object for FinancialYearSettings endpoints
        attr_accessor :financial_year_settings

        ##
        # @return [GroupAccountsClient] Client object for GroupAccounts endpoints
        attr_accessor :group_accounts

        ##
        # @return [InvoiceAddressesClient] Client object for InvoiceAddresses endpoints
        attr_accessor :invoice_addresses

        ##
        # @return [InvoiceHistoryClient] Client object for InvoiceHistory endpoints
        attr_accessor :invoice_history

        ##
        # @return [InvoiceLinesClient] Client object for InvoiceLines endpoints
        attr_accessor :invoice_lines

        ##
        # @return [InvoicesClient] Client object for Invoices endpoints
        attr_accessor :invoices

        ##
        # @return [LeadsClient] Client object for Leads endpoints
        attr_accessor :leads

        ##
        # @return [MagicLinksClient] Client object for MagicLinks endpoints
        attr_accessor :magic_links

        ##
        # @return [NotesClient] Client object for Notes endpoints
        attr_accessor :notes

        ##
        # @return [PaymentsClient] Client object for Payments endpoints
        attr_accessor :payments

        ##
        # @return [PaymentsAppliedClient] Client object for PaymentsApplied endpoints
        attr_accessor :payments_applied

        ##
        # @return [ProfilesAccountingClient] Client object for ProfilesAccounting endpoints
        attr_accessor :profiles_accounting

        ##
        # @return [ProfilesAccountingContactsClient] Client object for ProfilesAccountingContacts endpoints
        attr_accessor :profiles_accounting_contacts

        ##
        # @return [ProfilesCompaniesClient] Client object for ProfilesCompanies endpoints
        attr_accessor :profiles_companies

        ##
        # @return [ProvisioningClient] Client object for Provisioning endpoints
        attr_accessor :provisioning

        ##
        # @return [ReportsClient] Client object for Reports endpoints
        attr_accessor :reports

        ##
        # @return [StatusClient] Client object for Status endpoints
        attr_accessor :status

        ##
        # @return [SyncClient] Client object for Sync endpoints
        attr_accessor :sync

        ##
        # @return [TransactionsClient] Client object for Transactions endpoints
        attr_accessor :transactions

        ##
        # @return [TranscriptionsClient] Client object for Transcriptions endpoints
        attr_accessor :transcriptions

        ##
        # @return [UserAccountsClient] Client object for UserAccounts endpoints
        attr_accessor :user_accounts

        ##
        # @return [UserRolesClient] Client object for UserRoles endpoints
        attr_accessor :user_roles

        ##
        # @return [WebhookRulesClient] Client object for WebhookRules endpoints
        attr_accessor :webhook_rules

        ##
        # @return [WebhooksClient] Client object for Webhooks endpoints
        attr_accessor :webhooks


        ##
        # Construct a new API client targeting the specified server.
        #
        # @param env [string] Either "sbx", "prd", or the URI of the server, ending in a slash (/)
        def initialize(env)
            @version = "2023.5.21.0"
            @env = case env
                when "sbx"
                    "https://api.sbx.lockstep.io/"
                when "prd"
                    "https://api.lockstep.io/"
                else
                    env
                end
                
            # Construct all the clients
            @api_keys = ApiKeysClient.new(self)
            @app_enrollments = AppEnrollmentsClient.new(self)
            @applications = ApplicationsClient.new(self)
            @attachment_links = AttachmentLinksClient.new(self)
            @attachments = AttachmentsClient.new(self)
            @code_definitions = CodeDefinitionsClient.new(self)
            @companies = CompaniesClient.new(self)
            @contacts = ContactsClient.new(self)
            @credit_memos_applied = CreditMemosAppliedClient.new(self)
            @currencies = CurrenciesClient.new(self)
            @custom_field_definitions = CustomFieldDefinitionsClient.new(self)
            @custom_field_values = CustomFieldValuesClient.new(self)
            @definitions = DefinitionsClient.new(self)
            @feature_flags = FeatureFlagsClient.new(self)
            @financial_account = FinancialAccountClient.new(self)
            @financial_account_balance_history = FinancialAccountBalanceHistoryClient.new(self)
            @financial_year_settings = FinancialYearSettingsClient.new(self)
            @group_accounts = GroupAccountsClient.new(self)
            @invoice_addresses = InvoiceAddressesClient.new(self)
            @invoice_history = InvoiceHistoryClient.new(self)
            @invoice_lines = InvoiceLinesClient.new(self)
            @invoices = InvoicesClient.new(self)
            @leads = LeadsClient.new(self)
            @magic_links = MagicLinksClient.new(self)
            @notes = NotesClient.new(self)
            @payments = PaymentsClient.new(self)
            @payments_applied = PaymentsAppliedClient.new(self)
            @profiles_accounting = ProfilesAccountingClient.new(self)
            @profiles_accounting_contacts = ProfilesAccountingContactsClient.new(self)
            @profiles_companies = ProfilesCompaniesClient.new(self)
            @provisioning = ProvisioningClient.new(self)
            @reports = ReportsClient.new(self)
            @status = StatusClient.new(self)
            @sync = SyncClient.new(self)
            @transactions = TransactionsClient.new(self)
            @transcriptions = TranscriptionsClient.new(self)
            @user_accounts = UserAccountsClient.new(self)
            @user_roles = UserRolesClient.new(self)
            @webhook_rules = WebhookRulesClient.new(self)
            @webhooks = WebhooksClient.new(self)
        end

        ##
        # Configure this API client to use API key authentication
        #
        # Authentication is either via [Lockstep Platform API key](https://developer.lockstep.io/docs/api-keys) or [JWT Bearer Token](https://developer.lockstep.io/docs/jwt-bearer-tokens)
        #
        # @param api_key [string] The API Key to use for authentication
        def with_api_key(api_key)
            @bearer_token = nil
            @api_key = api_key
        end

        ##
        # Configure this API client to use JWT Bearer Token authentication
        #
        # Authentication is either via [Lockstep Platform API key](https://developer.lockstep.io/docs/api-keys) or [JWT Bearer Token](https://developer.lockstep.io/docs/jwt-bearer-tokens)
        #
        # @param bearer_token [string] The Bearer Token to use for authentication
        def with_bearer_token(bearer_token)
            @api_key = nil
            @bearer_token = bearer_token
        end

        ##
        # Configure this API to use an application name
        #
        # @param app_name [string] The name of the application
        def with_app_name(app_name)
            @app_name = app_name
        end

        ##
        # Send a request to the API and return the results
        #
        # Sends a request to the 
        def request(method, path, body, params)
        
            url = URI(@env + path)
            if !params.nil?  
                url.query = URI.encode_www_form(params)
            end
            
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            
            request = case method
                when :get
                    Net::HTTP::Get.new(url)
                when :post
                    Net::HTTP::Post.new(url)
                when :patch
                    Net::HTTP::Patch.new(url)
                when :put
                    Net::HTTP::Put.new(url)
                when :delete
                    Net::HTTP::Delete.new(url)
                end
                
            # Set headers and body for request
            request["Accept"] = 'application/json'
            request["Content-Type"] = 'application/*+json'
            request["SdkType"] = 'Ruby'
            request["SdkVersion"] = '2023.5.21.0'
            request["MachineName"] = Socket.gethostname
            request.body = body

            # If there is an application name
            if @app_name != nil
                request["ApplicationName"] = @app_name
            end

            # Which authentication are we using?
            if @api_key != nil 
              request["Api-Key"] = @api_key
            end
            if @bearer_token != nil 
              request["Authorization"] = 'Bearer ' + @bearer_token
            end
            
            # Send the request
            response = http.request(request)
            response.read_body
        end
    end   
end  