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
    # The CustomFieldSyncModel represents information coming into Lockstep from an external financial system or other
    # enterprise resource planning system.  [Custom Fields](https://developer.lockstep.io/docs/custom-fields#custom-fields)
    # represent custom data extensions that you can use with the Lockstep Platform.  If you need to store extra
    # information about an object that does not match Lockstep's official schema, you can store it in the Custom
    # Field system using CustomFieldSyncModel.
    #
    # To store a custom field for an object, create a CustomFieldSyncModel record containing the `TableKey` and
    # `ErpKey` of the entity to which you will attach a custom field. Next specify the field's `CustomFieldLabel`
    # and either a `StringValue` or `NumericValue`.
    #
    # Once imported, this record will be available in the Lockstep API as a [CustomFieldValueModel](https://developer.lockstep.io/docs/customfieldvaluemodel).
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class CustomFieldSyncModel

        ##
        # Initialize the CustomFieldSyncModel using the provided prototype
        def initialize(params = {})
            @on_match_action = params.dig(:on_match_action)
            @erp_key = params.dig(:erp_key)
            @table_key = params.dig(:table_key)
            @custom_field_label = params.dig(:custom_field_label)
            @string_value = params.dig(:string_value)
            @numeric_value = params.dig(:numeric_value)
            @value = params.dig(:value)
            @created = params.dig(:created)
            @modified = params.dig(:modified)
        end

        ##
        # @return [MatchAction] Indicates what action to take when an existing object has been found during the sync process.
        attr_accessor :on_match_action

        ##
        # @return [String] This is the primary key of the record to which you will attach this custom field. You should provide the identifying number as it is stored in the originating financial system. Search for a unique, non-changing number within the originating financial system for this record. Custom Fields are identified by the `TableKey` and `ErpKey` values together. Example: You have an invoice whose ID number is 100047878, and you wish to store a custom field on that invoice named "ApprovalStatusCode". For the `ErpKey` field, specify the value `100047878`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] Custom Fields are identified by the `TableKey` and `ErpKey` values together. Example: You have an invoice whose ID number is 100047878, and you wish to store a custom field on that invoice named "ApprovalStatusCode". For the `TableKey` field, specify the value `Invoice`. Recognized types include: * `Company` - Link this custom field to a CompanySyncModel * `Contact` - Link this custom field to a ContactSyncModel * `Invoice` - Link this custom field to an InvoiceSyncModel * `InvoiceLine` - Link this custom field to an InvoiceLineSyncModel * `Payment` - Link this custom field to a PaymentSyncModel
        attr_accessor :table_key

        ##
        # @return [String] A label that uniquely identifies this custom field within your software. Example: You have an invoice whose ID number is 100047878, and you wish to store a custom field on that invoice named "ApprovalStatusCode". For the `CustomFieldLabel` field, specify the value `ApprovalStatusCode`.
        attr_accessor :custom_field_label

        ##
        # @return [String] The value of this custom field, if it is stored in string format.
        attr_accessor :string_value

        ##
        # @return [Double] The value of this custom field, if it is stored in numeric format.
        attr_accessor :numeric_value

        ##
        # @return [String] The value of this custom field.
        attr_accessor :value

        ##
        # @return [Date-time] If known, the date when this record was created according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a created-date, leave this field null.
        attr_accessor :created

        ##
        # @return [Date-time] If known, the date when this record was most recently modified according to the originating financial system in which this record is maintained. If the originating financial system does not maintain a most-recently-modified-date, leave this field null.
        attr_accessor :modified

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'onMatchAction' => @on_match_action,
                'erpKey' => @erp_key,
                'tableKey' => @table_key,
                'customFieldLabel' => @custom_field_label,
                'stringValue' => @string_value,
                'numericValue' => @numeric_value,
                'value' => @value,
                'created' => @created,
                'modified' => @modified,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
