#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayan B S <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.4.32.0
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#

require 'net/http'
require 'openssl'
require 'uri'
require 'socket'

project_root = File.dirname(File.absolute_path(__FILE__))
Dir.glob(project_root + '/clients/*') {|file| require file}

module LockstepSdk
    class LockstepApi
    
        ##
        # @return [String] The version number of this Lockstep API client
        attr_accessor :version

        ##
        # @return [String] The name or URL of the environment
        attr_accessor :env 

        ##
        # @return [ActivitiesClient] Client object for Activities endpoints
        attr_accessor :activities

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
        # @return [CreditMemoAppliedClient] Client object for CreditMemoApplied endpoints
        attr_accessor :credit_memo_applied

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
        # @return [EmailsClient] Client object for Emails endpoints
        attr_accessor :emails

        ##
        # @return [InvoiceHistoryClient] Client object for InvoiceHistory endpoints
        attr_accessor :invoice_history

        ##
        # @return [InvoicesClient] Client object for Invoices endpoints
        attr_accessor :invoices

        ##
        # @return [LeadsClient] Client object for Leads endpoints
        attr_accessor :leads

        ##
        # @return [NotesClient] Client object for Notes endpoints
        attr_accessor :notes

        ##
        # @return [PaymentApplicationsClient] Client object for PaymentApplications endpoints
        attr_accessor :payment_applications

        ##
        # @return [PaymentsClient] Client object for Payments endpoints
        attr_accessor :payments

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
        # @return [UserAccountsClient] Client object for UserAccounts endpoints
        attr_accessor :user_accounts

        ##
        # @return [UserRolesClient] Client object for UserRoles endpoints
        attr_accessor :user_roles


        ##
        # Construct a new Lockstep API client targeting the specified server.
        #
        # @param env [string] Either "sbx", "prd", or the URI of the server, ending in a slash (/)
        def initialize(env)
            @version = "2022.4.32.0"
            @env = case env
                when "sbx"
                    "https://api.sbx.lockstep.io/"
                when "prd"
                    "https://api.lockstep.io/"
                else
                    env
                end
                
            # Construct all the clients
            @activities = ActivitiesClient.new(self)
            @api_keys = ApiKeysClient.new(self)
            @app_enrollments = AppEnrollmentsClient.new(self)
            @applications = ApplicationsClient.new(self)
            @attachments = AttachmentsClient.new(self)
            @code_definitions = CodeDefinitionsClient.new(self)
            @companies = CompaniesClient.new(self)
            @contacts = ContactsClient.new(self)
            @credit_memo_applied = CreditMemoAppliedClient.new(self)
            @currencies = CurrenciesClient.new(self)
            @custom_field_definitions = CustomFieldDefinitionsClient.new(self)
            @custom_field_values = CustomFieldValuesClient.new(self)
            @definitions = DefinitionsClient.new(self)
            @emails = EmailsClient.new(self)
            @invoice_history = InvoiceHistoryClient.new(self)
            @invoices = InvoicesClient.new(self)
            @leads = LeadsClient.new(self)
            @notes = NotesClient.new(self)
            @payment_applications = PaymentApplicationsClient.new(self)
            @payments = PaymentsClient.new(self)
            @provisioning = ProvisioningClient.new(self)
            @reports = ReportsClient.new(self)
            @status = StatusClient.new(self)
            @sync = SyncClient.new(self)
            @user_accounts = UserAccountsClient.new(self)
            @user_roles = UserRolesClient.new(self)
        end

        ##
        # Configure this API client to use API key authentication
        #
        # @param api_key [string] The [Lockstep Platform API key](https://developer.lockstep.io/docs/api-keys) to use for authentication
        def with_api_key(api_key)
            @bearer_token = nil
            @api_key = api_key
        end

        ##
        # Configure this API client to use JWT Bearer Token authentication
        #
        # @param bearer_token [string] The [JWT Bearer Token](https://developer.lockstep.io/docs/jwt-bearer-tokens) to use for authentication
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
            request["SdkVersion"] = '2022.4.32.0'
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