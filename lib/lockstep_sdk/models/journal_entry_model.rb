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
    # Contains information about a journal entry
    class JournalEntryModel

        ##
        # Initialize the JournalEntryModel using the provided prototype
        def initialize(params = {})
            @journal_entry_id = params.dig(:journal_entry_id)
            @group_key = params.dig(:group_key)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @erp_key = params.dig(:erp_key)
            @journal_id = params.dig(:journal_id)
            @source = params.dig(:source)
            @posting_date = params.dig(:posting_date)
            @status = params.dig(:status)
            @description = params.dig(:description)
            @comment = params.dig(:comment)
            @reference_number = params.dig(:reference_number)
            @source_posting_date = params.dig(:source_posting_date)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @source_modified_date = params.dig(:source_modified_date)
            @lines = params.dig(:lines)
            @attachments = params.dig(:attachments)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :journal_entry_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The AppEnrollmentId of the application that imported this record. For accounts with more than one financial system connected, this field identifies the originating financial system that produced this record. This value is null if this record was not loaded from an external ERP or financial system.
        attr_accessor :app_enrollment_id

        ##
        # @return [String] The unique ID of this record as it was known in its originating financial system. If this journal entry record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [String] The ERP’s identifier for this journal entry, usually has meaning to the user. May be the same value of the ERP Key.
        attr_accessor :journal_id

        ##
        # @return [JournalEntrySource] Possible sources for a Journal Entry.
        attr_accessor :source

        ##
        # @return [Date-time] The UTC date and time when this journal entry was posted.
        attr_accessor :posting_date

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
        # @return [Date-time] The date that the journal entry was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID of the user who created the journal entry.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date that the journal entry was last modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The ID of the user who last modified the journal entry.
        attr_accessor :modified_user_id

        ##
        # @return [Date-time] The date on which this record was last modified in source ERP.
        attr_accessor :source_modified_date

        ##
        # @return [JournalEntryLineModel] All lines attached to this journal entry. To retrieve this collection, specify `Lines` in the "Include" parameter for your query.
        attr_accessor :lines

        ##
        # @return [AttachmentModel] A collection of attachments linked to this record. To retrieve this collection, specify `Attachments` in the `include` parameter when retrieving data. To create an attachment, use the [Upload Attachment](https://developer.lockstep.io/reference/post_api-v1-attachments) endpoint with the `TableKey` to `Invoice` and the `ObjectKey` set to the `InvoiceId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :attachments

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'journalEntryId' => @journal_entry_id,
                'groupKey' => @group_key,
                'appEnrollmentId' => @app_enrollment_id,
                'erpKey' => @erp_key,
                'journalId' => @journal_id,
                'source' => @source,
                'postingDate' => @posting_date,
                'status' => @status,
                'description' => @description,
                'comment' => @comment,
                'referenceNumber' => @reference_number,
                'sourcePostingDate' => @source_posting_date,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'sourceModifiedDate' => @source_modified_date,
                'lines' => @lines,
                'attachments' => @attachments,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
