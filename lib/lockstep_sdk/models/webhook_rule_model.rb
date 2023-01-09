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
    # A Webhook Rule is a subscription to receive notifications whenever a specific event occurs.
    #
    # With the rule, you specify the Table and event you want to subscribe to.
    # You can also optionally specify a filter to further refine the updates you want to receive.
    class WebhookRuleModel

        ##
        # Initialize the WebhookRuleModel using the provided prototype
        def initialize(params = {})
            @webhook_rule_id = params.dig(:webhook_rule_id)
            @webhook_id = params.dig(:webhook_id)
            @group_key = params.dig(:group_key)
            @table_key = params.dig(:table_key)
            @event_type = params.dig(:event_type)
            @filter = params.dig(:filter)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :webhook_rule_id

        ##
        # @return [Uuid] The unique Webhook ID that will be used to fire the webhook for this rule.
        attr_accessor :webhook_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] A Webhook rule is setup to be fired based on `TableKey` and `EventType`. For example, a Webhook setup for when an Invoice is Created would have a `TableKey` value of `Invoice` and an `EventType` value of `I` (Insert). The `TableKey` value contains the name of the table within the Lockstep Platform to which this metadata is connected. For more information, see [linking metadata to an object](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :table_key

        ##
        # @return [String] A Webhook rule is setup to be fired based on `TableKey` and `EventType`. For example, a Webhook setup for when an Invoice is Created would have a `TableKey` value of `Invoice` and an `EventType` value of `I` (Insert). The `EventType` value is one of the following: - I (Insert) - D (Delete) - U (Update) For more information, see [linking metadata to an object](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :event_type

        ##
        # @return [String] An optional Searchlight filter for this webhook rule. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
        attr_accessor :filter

        ##
        # @return [Date-time] The date this webhook rule was created
        attr_accessor :created

        ##
        # @return [Uuid] The ID of the user who created this webhook rule
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date this webhook rule was last modified
        attr_accessor :modified

        ##
        # @return [Uuid] The ID of the user who last modified this webhook rule
        attr_accessor :modified_user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'webhookRuleId' => @webhook_rule_id,
                'webhookId' => @webhook_id,
                'groupKey' => @group_key,
                'tableKey' => @table_key,
                'eventType' => @event_type,
                'filter' => @filter,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
