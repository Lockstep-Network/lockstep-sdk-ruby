require 'faraday'
require 'json'
require "erb"

module LockstepSdk
    class LockstepApi

        def request(method, path, body, options={})
            response = connection.send(method) do |request|
                case method
                    when :get, :delete
                        request.url("#{encode_path(path)}?#{URI.encode_www_form(options)}")
                    when :post, :put
                        request.url("#{encode_path(path)}?#{URI.encode_www_form(options)}")
                        request.headers['Content-Type'] = 'application/json'
                        request.body = body.to_json unless body.empty?
                    end
                end

                if faraday_response
                    response
                else
                    response.body
                end
            end
        end
    end
end  