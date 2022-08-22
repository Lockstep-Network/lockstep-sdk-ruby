#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # A Webhook is a subscription to receive notifications automatically to the supplied
    # callback url when changes are made to a supported object.
    #
    # You will need to create at least one Webhook rule to receive notifications when a specific type of object is inserted, deleted, or updated.
    class WebhookModel

        ##
        # Initialize the WebhookModel using the provided prototype
        def initialize(params = {})
            @webhook_id = params.dig(:webhook_id)
            @group_key = params.dig(:group_key)
            @name = params.dig(:name)
            @status_code = params.dig(:status_code)
            @status_message = params.dig(:status_message)
            @client_secret = params.dig(:client_secret)
            @request_content_type = params.dig(:request_content_type)
            @callback_http_method = params.dig(:callback_http_method)
            @callback_url = params.dig(:callback_url)
            @expiration_date = params.dig(:expiration_date)
            @retry_count = params.dig(:retry_count)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @webhook_rules = params.dig(:webhook_rules)
            @partition_key = params.dig(:partition_key)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :webhook_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] A name for the webhook subscription.
        attr_accessor :name

        ##
        # @return [String] The status of the webhook (Active, Inactive, Errored).
        attr_accessor :status_code

        ##
        # @return [String] When the StatusCode is set to Errored a message is supplied for why it was errored.
        attr_accessor :status_message

        ##
        # @return [String] An secret set during webhook creation that can be used to verify that the notification is coming from the Lockstep API.
        attr_accessor :client_secret

        ##
        # @return [String] The format of the content to be returned in the webhook notifications. Current options are 'Full' or 'Id'.
        attr_accessor :request_content_type

        ##
        # @return [String] The HTTP Method to be used on the callback URL for use in notifications (GET, POST, PATCH, PUT).
        attr_accessor :callback_http_method

        ##
        # @return [Uri] The URL where the notification will be sent via the method set in CallbackHttpMethod. When creating a webhook, the Lockstep API will make a call to this url via the method set in the CallbackHttpMethod property with a query parameter of "code" set to an encoded string. To successfully create the webhook, the call must return a successful status code with the query parameter's value as the plain text content.
        attr_accessor :callback_url

        ##
        # @return [Date-time] The expiration date for the given webhook subscription. Once the expiration date passes, notifications will no longer be sent to the callback url.
        attr_accessor :expiration_date

        ##
        # @return [Int32] The amount of consecutive failed notifications, not including the current attempt, before marking the webhook as errored (i.e. if the value is set to 0, the webhook will be marked errored on the first failure, if the value is set to 1 the webhook will be marked errored on the second failure, and so on). Use -1 to never mark the webhook as errored due to failures.
        attr_accessor :retry_count

        ##
        # @return [Date-time] The date this webhook was created
        attr_accessor :created

        ##
        # @return [Uuid] The ID of the user who created this webhook
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date this webhook was last modified
        attr_accessor :modified

        ##
        # @return [Uuid] The ID of the user who last modified this webhook
        attr_accessor :modified_user_id

        ##
        # @return [WebhookRuleModel] A list of Webhook Rules associated with this Webhook.
        attr_accessor :webhook_rules

        ##
        # @return [String] The partition key used for the webhook callback history
        attr_accessor :partition_key

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'webhookId' => @webhook_id,
                'groupKey' => @group_key,
                'name' => @name,
                'statusCode' => @status_code,
                'statusMessage' => @status_message,
                'clientSecret' => @client_secret,
                'requestContentType' => @request_content_type,
                'callbackHttpMethod' => @callback_http_method,
                'callbackUrl' => @callback_url,
                'expirationDate' => @expiration_date,
                'retryCount' => @retry_count,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'webhookRules' => @webhook_rules,
                'partitionKey' => @partition_key,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
