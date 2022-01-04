require 'net/http'
require 'openssl'
require 'uri'

module LockstepSdk
    class LockstepApi

        # Construct a new Lockstep API client targeting the specified server.
        #
        # @param env [string] Either "sbx", "prd", or the URI of the server, ending in a slash (/)
        def self.new(env)
            @version = "2021.39.690"
            @env = case env
                when "sbx"
                    "https://api.sbx.lockstep.io/"
                when "prd"
                    "https://api.lockstep.io/"
                else
                    env
                end
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