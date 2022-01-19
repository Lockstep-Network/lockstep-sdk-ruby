#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3.26.0
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#

require 'net/http'
require 'openssl'
require 'uri'

module LockstepSdk
    class LockstepApi

        # Construct a new Lockstep API client targeting the specified server.
        #
        # @param env [string] Either "sbx", "prd", or the URI of the server, ending in a slash (/)
        def self.new(env)
            @version = "2022.3.26.0"
            @env = case env
                when "sbx"
                    "https://api.sbx.lockstep.io/"
                when "prd"
                    "https://api.lockstep.io/"
                else
                    env
                end
                
            # Construct all the clients
            @activities = Activities.new(self)
            @apikeys = ApiKeys.new(self)
            @appenrollments = AppEnrollments.new(self)
            @applications = Applications.new(self)
            @attachments = Attachments.new(self)
            @codedefinitions = CodeDefinitions.new(self)
            @companies = Companies.new(self)
            @contacts = Contacts.new(self)
            @creditmemoapplied = CreditMemoApplied.new(self)
            @currencies = Currencies.new(self)
            @customfielddefinitions = CustomFieldDefinitions.new(self)
            @customfieldvalues = CustomFieldValues.new(self)
            @definitions = Definitions.new(self)
            @emails = Emails.new(self)
            @invoicehistory = InvoiceHistory.new(self)
            @invoices = Invoices.new(self)
            @leads = Leads.new(self)
            @notes = Notes.new(self)
            @paymentapplications = PaymentApplications.new(self)
            @payments = Payments.new(self)
            @provisioning = Provisioning.new(self)
            @reports = Reports.new(self)
            @status = Status.new(self)
            @sync = Sync.new(self)
            @useraccounts = UserAccounts.new(self)
            @userroles = UserRoles.new(self)
        end

        # Configure this API client to use API key authentication
        #
        # @param api_key [string] The [Lockstep Platform API key](https://developer.lockstep.io/docs/api-keys) to use for authentication
        def with_api_key(api_key)
            @api_key = api_key
            @bearer_token = nil
        end

        # Configure this API client to use JWT Bearer Token authentication
        #
        # @param bearer_token [string] The [JWT Bearer Token](https://developer.lockstep.io/docs/jwt-bearer-tokens) to use for authentication
        def with_bearer_token(bearer_token)
            @api_key = nil
            @bearer_token = bearer_token
        end

        # Send a request to the API and return the results
        #
        # Sends a request to the 
        def request(method, path, body, options={})
            
            url = URI(@env + path)
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
            request["Accept"] = 'application/json'

            # Which authentication are we using?
            if @api_key != nil 
                request["Api-Key"] = @api_key
            end
            if @api_key != nil 
                request["Authorization"] = 'Bearer ' + @bearer_token
            end

            # Send the request
            response = http.request(request)
            puts response.read_body
        end
    end
end  