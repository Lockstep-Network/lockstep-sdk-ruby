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
    # The JournalEntrySyncModel represents information coming into Lockstep from an external financial system or other
    # enterprise resource planning system.  To import data from an external system, convert your original data into
    # the JournalEntrySyncModel format and call the [Upload Sync File API](https://developer.lockstep.io/reference/post_api-v1-sync-zip).
    # This API retrieves all of the data you uploaded in a compressed ZIP file and imports it into the Lockstep
    # platform.
    #
    # Once imported, this record will be available in the Lockstep API as a JournalEntryModel
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class JournalEntrySyncModel

        ##
        # Initialize the JournalEntrySyncModel using the provided prototype
        def initialize(params = {})
            @on_match_action = params.dig(:on_match_action)
            @erp_key = params.dig(:erp_key)
            @journal_id = params.dig(:journal_id)
            @source = params.dig(:source)
            @status = params.dig(:status)
            @description = params.dig(:description)
            @comment = params.dig(:comment)
            @reference_number = params.dig(:reference_number)
            @source_posting_date = params.dig(:source_posting_date)
            @created = params.dig(:created)
            @modified = params.dig(:modified)
        end

        ##
        # @return [MatchAction] Indicates what action to take when an existing object has been found during the sync process.
        attr_accessor :on_match_action

        ##
        # @return [String] This is the primary key of the Journal Entry record. For this field, you should use whatever the Journal Entry's unique identifying number is in the originating system. Search for a unique, non-changing number within the originating financial system for this record. Example: If you store your Journal Entry records in a database, whatever the primary key for the Journal Entry table is in the database should be the "ErpKey". For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] The ERP’s identifier for this journal entry, usually has meaning to the user. May be the same value of the ERP Key.
        attr_accessor :journal_id

        ##
        # @return [JournalEntrySource] Possible sources for a Journal Entry.
        attr_accessor :source

        ##
        # @return [JournalEntryStatus] Possible statuses for a Journal Entry.
        attr_accessor :status

        ##
        # @return [String] A brief description explaining the purpose of the journal entry.
        attr_accessor :description

        ##
        # @return [String] An additional comment related to the entry.
        attr_accessor :comment

        ##
        # @return [String] Any reference number or identifier associated with the entry, such as an invoice number or purchase order.
        attr_accessor :reference_number

        ##
        # @return [Date-time] The raw posting date from the source.
        attr_accessor :source_posting_date

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
                'journalId' => @journal_id,
                'source' => @source,
                'status' => @status,
                'description' => @description,
                'comment' => @comment,
                'referenceNumber' => @reference_number,
                'sourcePostingDate' => @source_posting_date,
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
