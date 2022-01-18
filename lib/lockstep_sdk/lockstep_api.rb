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
# @version    2022.3.14.0
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#

require 'net/http'
require 'openssl'
require 'uri'

project_root = File.dirname(File.absolute_path(__FILE__))
Dir.glob(project_root + '/clients/*') {|file| require file}

module LockstepSdk
    class LockstepApi
    
        attr_accessor :version, \ 
                      :env, \
            @activities, \
            @api_keys, \
            @app_enrollments, \
            @applications, \
            @attachments, \
            @code_definitions, \
            @companies, \
            @contacts, \
            @credit_memo_applied, \
            @currencies, \
            @custom_field_definitions, \
            @custom_field_values, \
            @definitions, \
            @emails, \
            @invoice_history, \
            @invoices, \
            @leads, \
            @notes, \
            @payment_applications, \
            @payments, \
            @provisioning, \
            @reports, \
            @status, \
            @sync, \
            @user_accounts, \
            @user_roles, \

        # Construct a new Lockstep API client targeting the specified server.
        #
        # @param env [string] Either "sbx", "prd", or the URI of the server, ending in a slash (/)
        def self.new(env)
            @version = "2022.3.14.0"
            @env = case env
                when "sbx"
                    "https://api.sbx.lockstep.io/"
                when "prd"
                    "https://api.lockstep.io/"
                else
                    env
                end
                
            # Construct all the clients
            @activities = activities_client.new(self)
            @api_keys = api_keys_client.new(self)
            @app_enrollments = app_enrollments_client.new(self)
            @applications = applications_client.new(self)
            @attachments = attachments_client.new(self)
            @code_definitions = code_definitions_client.new(self)
            @companies = companies_client.new(self)
            @contacts = contacts_client.new(self)
            @credit_memo_applied = credit_memo_applied_client.new(self)
            @currencies = currencies_client.new(self)
            @custom_field_definitions = custom_field_definitions_client.new(self)
            @custom_field_values = custom_field_values_client.new(self)
            @definitions = definitions_client.new(self)
            @emails = emails_client.new(self)
            @invoice_history = invoice_history_client.new(self)
            @invoices = invoices_client.new(self)
            @leads = leads_client.new(self)
            @notes = notes_client.new(self)
            @payment_applications = payment_applications_client.new(self)
            @payments = payments_client.new(self)
            @provisioning = provisioning_client.new(self)
            @reports = reports_client.new(self)
            @status = status_client.new(self)
            @sync = sync_client.new(self)
            @user_accounts = user_accounts_client.new(self)
            @user_roles = user_roles_client.new(self)
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
            request["Accept"] = 'application/json'
            request["Content-Type"] = 'application/*+json'
            request.body = body

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